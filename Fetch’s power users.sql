SELECT u.ID, COUNT(t.RECEIPT_ID) AS TRANSACTION_COUNT
FROM Transactions t
JOIN Users u ON t.USER_ID = u.ID
GROUP BY u.ID
ORDER BY TRANSACTION_COUNT DESC
LIMIT 5;