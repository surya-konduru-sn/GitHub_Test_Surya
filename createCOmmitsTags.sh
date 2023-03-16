string=""
x=1
j=1
while [ $x -le 8000 ]
do
 rm -rf random*
 string="touch randomfile$((j+x)) && git add . && git commit -m '$((j+x)):randfile_$((j+x))'"
 echo $string "HIIIIII"
 eval "$string"
 x= $[$x+1]
 git push
sleep 10
done
