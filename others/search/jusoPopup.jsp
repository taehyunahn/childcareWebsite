<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Insert title here</title>
  </head>
  <script language="javascript">
    // opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("주소입력화면 소스"도 동일하게 적용시켜야 합니다.)
    //document.domain = "abc.go.kr";

    /*
			모의 해킹 테스트 시 팝업API를 호출하시면 IP가 차단 될 수 있습니다. 
			주소팝업API를 제외하시고 테스트 하시기 바랍니다.
*/

    function init() {
      var url = location.href;
      var confmKey = 'devU01TX0FVVEgyMDIyMDIwNzEwNDQ1MDExMjIxMzU=';
      var resultType = '4'; // 도로명주소 검색결과 화면 출력내용, 1 : 도로명, 2 : 도로명+지번+상세보기(관련지번, 관할주민센터), 3 : 도로명+상세보기(상세건물명), 4 : 도로명+지번+상세보기(관련지번, 관할주민센터, 상세건물명)
      var inputYn = '<%=inputYn%>';
      if (inputYn != 'Y') {
        document.form.confmKey.value = confmKey;
        document.form.returnUrl.value = url;
        document.form.resultType.value = resultType;
        document.form.action =
          'https://www.juso.go.kr/addrlink/addrCoordUrl.do'; //인터넷망
        document.form.submit();
        alert(inputYn);
      } else {
        opener.jusoCallBack(
          '<%=roadFullAddr%>',
          '<%=roadAddrPart1%>',
          '<%=addrDetail%>',
          '<%=roadAddrPart2%>',
          '<%=engAddr%>',
          '<%=jibunAddr%>',
          '<%=zipNo%>',
          '<%=admCd%>',
          '<%=rnMgtSn%>',
          '<%=bdMgtSn%>',
          '<%=detBdNmList%>',
          '<%=bdNm%>',
          '<%=bdKdcd%>',
          '<%=siNm%>',
          '<%=sggNm%>',
          '<%=emdNm%>',
          '<%=liNm%>',
          '<%=rn%>',
          '<%=udrtYn%>',
          '<%=buldMnnm%>',
          '<%=buldSlno%>',
          '<%=mtYn%>',
          '<%=lnbrMnnm%>',
          '<%=lnbrSlno%>',
          '<%=emdNo%>',
          '<%=entX%>',
          '<%=entY%>'
        );
        window.close();
      }
    }
  </script>
  <body onload="init();">
    <form
      id="form"
      name="form"
      method="post"
      action="/category2_search/test.php"
    >
      <input type="hidden" id="confmKey" name="confmKey" value="" />
      <input type="hidden" id="returnUrl" name="returnUrl" value="" />
      <input type="hidden" id="resultType" name="resultType" value="" />
      <!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 START-->
      <!-- 
		<input type="hidden" id="encodingType" name="encodingType" value="EUC-KR"/>
		 -->
      <!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 END-->
    </form>
  </body>
</html>
