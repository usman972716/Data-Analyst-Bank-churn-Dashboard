


create database bank

select * from [dbo].[Bank Customer Churn Prediction]

--1. How many total customers are there?
select count(customer_id) [no of cust] from [dbo].[Bank Customer Churn Prediction]

--2. How many customers have churned and how many are retained?

select churn, count(*) from [dbo].[Bank Customer Churn Prediction]
group by churn

--3. What is the overall churn rate (%)?
select sum(case when churn = 1 then 1 else 0 end) * 100 / count(*) [% churn] from [dbo].[Bank Customer Churn Prediction]


--4. How many customers churned by country?
select country, count(*) from [dbo].[Bank Customer Churn Prediction]
group by country

--6.Total number of churn by gender?
select gender, count(churn) from [dbo].[Bank Customer Churn Prediction]
where churn = 1
group by gender

--7 active_member by country
select country,count(active_member) [no .od active] from [dbo].[Bank Customer Churn Prediction]
where active_member = 1
group by country

--8 how many people have credit card
select credit_card, count(credit_card) [no of credit] from [dbo].[Bank Customer Churn Prediction]
group by credit_card

select * from [dbo].[Bank Customer Churn Prediction]

select gender, count(active_member) from [dbo].[Bank Customer Churn Prediction]
where active_member = 1
group by gender


select country, count(credit_card) from [dbo].[Bank Customer Churn Prediction]
where credit_card = 1
group by country

select gender, count(credit_card) from [dbo].[Bank Customer Churn Prediction]
where credit_card = 1
group by gender

select country, count(churn) from [dbo].[Bank Customer Churn Prediction]
where churn = 1
group by country