WITH matches AS
    (SELECT row_number() over(order by team_name) AS id, t.*
     FROM teams t)
SELECT team.team_name AS team, opponent.team_name AS opponent
FROM matches team
JOIN matches opponent ON team.id <> opponent.id
ORDER BY team