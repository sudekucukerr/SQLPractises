--Select
Select * from Products -- * : column(Sütun) demektir.

Select ContactName Adi, CompanyName SirketAdi, City from Customers --İsmini değişmek için yanına yeni ismi yazabiliriz.

Select * from Customers where City = 'London' --şehri londra olanları getir.

--Case insensitive (büyük/küçük harf duyarsız)
Select * from Products where CategoryID=1

Select * from Products where CategoryID=1 and UnitPrice>=10 --kategori id'si 1 olan ve fiyatı 10'dan büyük olan

Select * from Products order by CategoryID, ProductName -- order by: sırala

select * from Products order by UnitPrice asc -- asc: artan'a göre sırala

select * from Products order by UnitPrice desc -- desc: azalan/düşen'e göre sırala

select * from Products where CategoryID=1 order by UnitPrice desc -- kategory id'si 1 olanların unitPrice'ını azalan şeklinde sırala

select count(*) from Products -- Producs tablosundaki ürün sayısını gösterir

select count(*) from Products where CategoryID=2 

Select count(*) Adet from Products

select * from Products group by CategoryID -- BU ÇALIŞMAZ!Group by kullandığımız zaman select'lediğimiz kolon sadece group by'da yazdığımız alan ve kümülatif data'lar olabilir.

select categoryID, count(*) from Products group by CategoryID having count(*)<10
--içerisinde 10 taneden az ürün çeşitleri olan kategoriler


select categoryID, count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10
--sayısı 10'dan küçük olan ve unitPrice 20'den fazla olan ürün grupları


--Joın (birleştirmek)

select Products.CategoryID, Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>10

--DTO : Data Transformation Object 

select * from Products p left join [Order Details] od --left join: solda olup, sağda olmayan ürünler
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID


--sisteme kayıt olup ürün almamış kişileri göster.
select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null --null, siparişlerde gelmeyen datadır. O data yoktur.












