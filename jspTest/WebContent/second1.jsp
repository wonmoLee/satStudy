
<!-- 아래와 같은 모양은 페이지를 설정하는 역할이다. import도 담당 -->
<%@page import="model.Drugstore"%>
<%@page import="dao.DrugstoreDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!-- 자바 문구가 들어간다. -->
<%	
	String loc = request.getParameter("loc");

	DrugstoreDAO dd = DrugstoreDAO.getInstance();
	Drugstore ds1 = dd.getFirstLine(loc);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>약국 정보</title>
</head>
<body>

<!-- 데이터를 페이지에 출력한다 -->
<%= ds1.getName() %>

<br>
<br>

<%= ds1.getLoc() %>

</body>
</html>