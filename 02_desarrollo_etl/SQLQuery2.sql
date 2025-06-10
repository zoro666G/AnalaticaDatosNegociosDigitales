SELECT EmployeeID, FirstName,LastName,HireDate
FROM Northwind.dbo.Employees;

select * from Employees
SELECT * from stage_northwind.dbo.empleado

SELECT CategoryID, CategoryName
FROM Northwind.dbo.Categories

select CustomerID, CompanyName,isnull (City, 'SC') as City, isnull(Region, 'SR') as Region, isnull(PostalCode, 'SPC') as PostalCode, isnull (Country, 'SC') as Country 
from northwind.dbo.Customers;

select * from stage_northwind.dbo.clientes;
select * from stage_northwind.dbo.categorias;

select c.CustomerID, e.EmployeeID, p.ProductID, o.OrderDate, (od.Quantity * od.UnitPrice * (1 - od.Discount)) as 'Monto', od.Quantity, od.UnitPrice, od.Discount
from northwind.dbo.Customers as c
inner join northwind.dbo.orders as o
on c.CustomerID = o.CustomerID
inner join northwind.dbo.Employees as e
on e.EmployeeID = o.EmployeeID
inner join northwind.dbo.[Order Details] as od
on o.OrderID = od.OrderID
inner join northwind.dbo.Products as p
on od.ProductID = p.[ProductID];
	