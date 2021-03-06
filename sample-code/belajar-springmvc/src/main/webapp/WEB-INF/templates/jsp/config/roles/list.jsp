<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="jumbotron">
		<h2>
			ROLES LIST			
		</h2>
		<h3>
			Total Records : <c:out value="${fn:length(roleslist)}"/>
		</h3>
		
		<div class="form-group">		
			<a href="form?type=1" class="btn btn-primary btn-sm active" role="button">Add Roles</a>
		</div>			
		
		<table class="table table-striped">
			<tr>
	    		<td>Roles ID</td>
	    		<td>Roles Name</td>
	    		<td>Edit</td>
	    		<td>Delete</td>
	    	</tr>
			<c:forEach var="listVar" items="${roleslist}">
			
			
			
			<tr>
	    		<td><c:out value="${listVar.rolesId}"/></td>
	    		<td><c:out value="${listVar.roleName}"/></td>
	    		<td><a href="form?type=2&id=${listVar.rolesId}"  class="btn btn-success btn-sm active" role="button">Edit</a></td>
	    		<td><a href="form?type=3&id=${listVar.rolesId}"  class="btn btn-success btn-sm active" role="button">Delete</a></td>
	    	</tr>   			
    		
		</c:forEach>
		</table>
	</div>
	
</body>
</html>