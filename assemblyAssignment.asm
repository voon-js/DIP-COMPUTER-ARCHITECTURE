.model small
.stack 100h

.data
 
exitMsg db "Thanks for using GradePoint+$"
 
logo1 db "  ________                  .___    __________      .__        __               $"  
logo2 db " /  _____/___________     __| _/____\______   \____ |__| _____/  |_     .__     $"
logo3 db "/   \  __\_  __ \__  \   / __ |/ __ \|     ___/  _ \|  |/    \   __\  __|  |___ $"
logo4 db "\    \_\  \  | \// __ \_/ /_/ \  ___/|    |  (  <_> )  |   |  \  |   /__    __/ $"
logo5 db " \______  /__|  (____  /\____ |\___  >____|   \____/|__|___|  /__|      |__|    $"
logo6 db "        \/           \/      \/    \/                       \/                  $"  

menuMsg1 db "A modern tool for grade and GPA.$" 
menuMsg2 db "[1] Login$"
menuMsg3 db "[2] Exit$"
menuMsg4 db "Enter your option: $"
menuMsg5 db "Invalid option, please try again.$"

loginMsg1 db "LOGIN SECTION$"
loginMsg2 db "Username: $"
loginMsg3 db "Successfully logged in!$"
loginMsg4 db "Username is not recognised. Please type again.$"

mainMsg0 db "OVERVIEW$"
mainMsg1 db "[1] Calculate student grade$"
mainMsg2 db "[2] View grade list$"
mainMsg3 db "[3] Logout$"
mainMsg4 db "Press any key to continue...$"
mainMsg5 db "Enter student name: $"
mainMsg6 db "[1-9] Choose any subjects, [z] Proceed, [x] Go back: $"
mainMsg7 db "Enter the marks (1-99%): $"
mainMsg8 db "Only numbers is allowed!$"
mainMsg9 db "Converting student mark into grade point... (This may take a while)$"
mainMsg10 db "Confirm to proceed? (y/n): $"

errorMsg1 db "Only numbers is allowed!$"

logoutMsg db "Successfully logged out.$"

listHeader db "Letter Grade", 6 dup(" "), "Grade Point", 9 dup(" "), "Percentage Range", "$"
listHeader2 db "Total Subjects", 15 dup(" "), "Grades", "$" 
lineSeparater db "-----------------------------------------$"
lineSeparater2 db "----------------------------------------------------------------------$"

resultMsg1 db "STUDENT NAME: $"
resultMsg2 db "STUDENT GPA:                 $"
resultMsg3 db ".000$"
resultMsg4 db "TOTAL CREDIT HOURS:          $"
resultMsg5 db ".00$"

row1 db "A", 17 dup(" "), "4.0", 18 dup(" "), "80-100%", "$"
row2 db "B", 17 dup(" "), "3.0", 18 dup(" "), "65-79%", "$"
row3 db "C", 17 dup(" "), "2.0", 18 dup(" "), "50-64%", "$"
row4 db "D", 17 dup(" "), "1.0", 18 dup(" "), "45-49%", "$"
row5 db "F", 17 dup(" "), "0.0", 18 dup(" "), "Below 45%", "$"

shortSpace db 17 dup(" "), "$"

grade1 db "A+$", 0
grade2 db "A$", 0
grade3 db "A-$", 0
grade4 db "B+$", 0
grade5 db "B$", 0
grade6 db "B-$", 0
grade7 db "C+$", 0
grade8 db "C$", 0
grade9 db "C-$", 0
grade10 db "D$", 0
grade11 db "F$", 0

gradePoint1 dw 400
gradePoint2 dw 400
gradePoint3 dw 370
gradePoint4 dw 330
gradePoint5 dw 300
gradePoint6 dw 270
gradePoint7 dw 230
gradePoint8 dw 200
gradePoint9 dw 170
gradePoint10 dw 100
gradePoint11 dw 0

subject1 db "[1] Mathematics.$"
subject2 db "[2] Physics.$"
subject3 db "[3] Chemistry.$"
subject4 db "[4] History.$"
subject5 db "[5] English.$" 
subject6 db "[6] Biology.$"
subject7 db "[7] Computer Science.$"
subject8 db "[8] Ecomonics.$"
subject9 db "[9] Geography.$"

resultSubject1 db "Mathematics                    $"
resultSubject2 db "Physics                        $"
resultSubject3 db "Chemistry                      $"
resultSubject4 db "History                        $"
resultSubject5 db "English                        $"
resultSubject6 db "Biology                        $"
resultSubject7 db "Computer Science               $"
resultSubject8 db "Ecomonics                      $"
resultSubject9 db "Geography                      $"

newLine db 13, 10, "$"

buffer db 5 dup(" ")
buffer_end db "$"

username db "tarumt$", "$"

currentSubject db 5 dup("$")
currentMark db 5, 0, 5 dup("$")

usernameOption db 20
               db ?
               db 20 dup("$")

subjectOption db 3
              db ?
              db 3 dup("$")

studentName db 20
            db ?
            db 20 dup("$")

subject1Mark1 db 0
subject1Mark2 db 0
subject2Mark1 db 0
subject2Mark2 db 0
subject3Mark1 db 0
subject3Mark2 db 0
subject4Mark1 db 0
subject4Mark2 db 0
subject5Mark1 db 0
subject5Mark2 db 0
subject6Mark1 db 0
subject6Mark2 db 0
subject7Mark1 db 0
subject7Mark2 db 0
subject8Mark1 db 0
subject8Mark2 db 0
subject9Mark1 db 0
subject9Mark2 db 0

combinedMark1 db 0
combinedMark2 db 0
combinedMark3 db 0
combinedMark4 db 0
combinedMark5 db 0
combinedMark6 db 0
combinedMark7 db 0
combinedMark8 db 0
combinedMark9 db 0

subjectGrade1 db 5 dup("$")
subjectGrade2 db 5 dup("$")
subjectGrade3 db 5 dup("$")
subjectGrade4 db 5 dup("$")
subjectGrade5 db 5 dup("$")
subjectGrade6 db 5 dup("$")
subjectGrade7 db 5 dup("$")
subjectGrade8 db 5 dup("$")
subjectGrade9 db 5 dup("$")

subjectGpa1 db 0  
subjectGpa2 db 0
subjectGpa3 db 0
subjectGpa4 db 0
subjectGpa5 db 0
subjectGpa6 db 0
subjectGpa7 db 0
subjectGpa8 db 0
subjectGpa9 db 0

convertedG1 db 0 
convertedG2 db 0
convertedG3 db 0
convertedG4 db 0
convertedG5 db 0
convertedG6 db 0
convertedG7 db 0
convertedG8 db 0
convertedG9 db 0

totalGpa db 0

oneHour db 4
totalHours db 36

convertedGpa db 0

.code

start: 

mov ax, @data
mov ds, ax   

show_logo:

mov ah, 09h
lea dx, logo1  
int 21h

mov ah, 09h
lea dx, logo2  
int 21h

mov ah, 09h
lea dx, logo3  
int 21h

mov ah, 09h
lea dx, logo4  
int 21h

mov ah, 09h
lea dx, logo5  
int 21h

mov ah, 09h
lea dx, logo6  
int 21h

mov ah, 09h
lea dx, menuMsg1  
int 21h           

main_menu:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, menuMsg2
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, menuMsg3
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, menuMsg4
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "1"
je login_page

cmp bl, "2"
je exit

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, menuMsg5
int 21h

jmp main_menu
           
login_page:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, loginMsg1
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, loginMsg2
int 21h

mov ah, 0ah
lea dx, usernameOption
int 21h

lea si, usernameOption + 2
lea di, username
mov cx, 5
mov bl, 1

username_confirmation:

mov al, [si]
cmp al, [di]
jne invalid_username
inc si
inc di
loop username_confirmation

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, loginMsg3
int 21h

jmp main_access

main_access:

mov al, combinedMark1
mov combinedMark1, 0 

mov al, combinedMark2
mov combinedMark2, 0

mov al, combinedMark3
mov combinedMark3, 0

mov al, combinedMark4
mov combinedMark4, 0

mov al, combinedMark5
mov combinedMark5, 0

mov al, combinedMark6
mov combinedMark6, 0

mov al, combinedMark7
mov combinedMark7, 0

mov al, combinedMark8
mov combinedMark8, 0

mov al, combinedMark9
mov combinedMark9, 0

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg0
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg1
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg2
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg3
int 21h     

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h
     
mov ah, 09h
lea dx, menuMsg4
int 21h

mov ah, 01h
int 21h
mov bl, al

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

cmp bl, "1"
je start_calculate

cmp bl, "2"
je view_list

cmp bl, "3"
je logged_out     

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, menuMsg5
int 21h

jmp main_access
     
start_calculate:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg5
int 21h

mov ah, 0ah
lea dx, studentName
int 21h

start_calculation2:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, subject1
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h  

mov ah, 09h
lea dx, subject2
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h 

mov ah, 09h
lea dx, subject3
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, subject4
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, subject5
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, subject6
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, subject7
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, subject8
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, subject9
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg6
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "1"
je sub1  
  
cmp bl, "2"
je sub2   
  
cmp bl, "3"
je sub3 

cmp bl, "4"
je sub4 

cmp bl, "5"
je sub5 

cmp bl, "6"
je sub6 

cmp bl, "7"
je sub7 

cmp bl, "8"
je sub8 

cmp bl, "9"
je sub9 

cmp bl, "x"
je main_access

cmp bl, "z"
je start_calculation3

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, menuMsg5
int 21h  
  
jmp start_calculation2  

start_calculation3:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h  

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg10
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "y"
je start_calculation4  

cmp bl, "n"
je start_calculation2

cmp bl, "Y"
je start_calculation4

cmp bl, "N"
je start_calculation2

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, menuMsg5
int 21h  
  
jmp start_calculation2

start_calculation4:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg9
int 21h 

setGrade1:

mov al, combinedMark1

cmp al, 0
jl nextRange1

cmp al, 45
jg nextRange1

lea si, grade11
lea di, subjectGrade1

copy_grade1:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade2 
jmp copy_grade1

nextRange1:

mov al, combinedMark1

cmp al, 46
jl nextRange2

cmp al, 49
jg nextRange2

lea si, grade10
lea di, subjectGrade1

copy_grade2:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade2 
jmp copy_grade2

nextRange2:   

mov al, combinedMark1

cmp al, 50
jl nextRange3

cmp al, 64
jg nextRange3

lea si, grade8
lea di, subjectGrade1

copy_grade3:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade2 
jmp copy_grade3

nextRange3:

mov al, combinedMark1

cmp al, 65
jl nextRange4

cmp al, 79
jg nextRange4

lea si, grade5
lea di, subjectGrade1

copy_grade4:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade2 
jmp copy_grade4

nextRange4:

mov al, combinedMark1

cmp al, 80
jl setGrade2

cmp al, 99
jg setGrade2

lea si, grade2
lea di, subjectGrade1

copy_grade5:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade2 
jmp copy_grade5

setGrade2:

mov al, combinedMark2

cmp al, 0
jl nextRange5

cmp al, 45
jg nextRange5

lea si, grade11
lea di, subjectGrade2

copy_grade6:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade3 
jmp copy_grade6

nextRange5:

mov al, combinedMark2

cmp al, 46
jl nextRange6

cmp al, 49
jg nextRange6

lea si, grade10
lea di, subjectGrade2

copy_grade7:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade2 
jmp copy_grade7

nextRange6:   

mov al, combinedMark2

cmp al, 50
jl nextRange7

cmp al, 64
jg nextRange7

lea si, grade8
lea di, subjectGrade2

copy_grade8:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade3 
jmp copy_grade8

nextRange7:

mov al, combinedMark2

cmp al, 65
jl nextRange8

cmp al, 79
jg nextRange8

lea si, grade5
lea di, subjectGrade2

copy_grade9:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade3 
jmp copy_grade9

nextRange8:

mov al, combinedMark2

cmp al, 80
jl setGrade3

cmp al, 99
jg setGrade3

lea si, grade2
lea di, subjectGrade2

copy_grade10:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade3 
jmp copy_grade10

setGrade3:

mov al, combinedMark3

cmp al, 0
jl nextRange9

cmp al, 45
jg nextRange9

lea si, grade11
lea di, subjectGrade3

copy_grade11:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade4 
jmp copy_grade11

nextRange9:

mov al, combinedMark3

cmp al, 46
jl nextRange10

cmp al, 49
jg nextRange10

lea si, grade10
lea di, subjectGrade3

copy_grade12:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade4 
jmp copy_grade12

nextRange10:   

mov al, combinedMark3

cmp al, 50
jl nextRange11

cmp al, 64
jg nextRange11

lea si, grade8
lea di, subjectGrade3

copy_grade13:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade4 
jmp copy_grade13

nextRange11:

mov al, combinedMark3

cmp al, 65
jl nextRange12

cmp al, 79
jg nextRange12

lea si, grade5
lea di, subjectGrade3

copy_grade14:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade4 
jmp copy_grade14

nextRange12:

mov al, combinedMark3

cmp al, 80
jl setGrade4

cmp al, 99
jg setGrade4

lea si, grade2
lea di, subjectGrade3

copy_grade15:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade4 
jmp copy_grade15

setGrade4:

mov al, combinedMark4

cmp al, 0
jl nextRange13

cmp al, 45
jg nextRange13

lea si, grade11
lea di, subjectGrade4

copy_grade16:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade5 
jmp copy_grade16

nextRange13:

mov al, combinedMark4

cmp al, 46
jl nextRange14

cmp al, 49
jg nextRange14

lea si, grade10
lea di, subjectGrade4

copy_grade17:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade5 
jmp copy_grade17

nextRange14:   

mov al, combinedMark4

cmp al, 50
jl nextRange15

cmp al, 64
jg nextRange15

lea si, grade8
lea di, subjectGrade4

copy_grade18:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade5 
jmp copy_grade18

nextRange15:

mov al, combinedMark4

cmp al, 65
jl nextRange16

cmp al, 79
jg nextRange16

lea si, grade5
lea di, subjectGrade4

copy_grade19:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade5 
jmp copy_grade19

nextRange16:

mov al, combinedMark4

cmp al, 80
jl setGrade5

cmp al, 99
jg setGrade5

lea si, grade2
lea di, subjectGrade4

copy_grade20:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade5 
jmp copy_grade20

setGrade5:

mov al, combinedMark5

cmp al, 0
jl nextRange17

cmp al, 45
jg nextRange17

lea si, grade11
lea di, subjectGrade5

copy_grade21:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade6 
jmp copy_grade21

nextRange17:

mov al, combinedMark5

cmp al, 46
jl nextRange18

cmp al, 49
jg nextRange18

lea si, grade10
lea di, subjectGrade5

copy_grade22:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade6 
jmp copy_grade22

nextRange18:   

mov al, combinedMark5

cmp al, 50
jl nextRange19

cmp al, 64
jg nextRange19

lea si, grade8
lea di, subjectGrade5

copy_grade23:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade6 
jmp copy_grade23

nextRange19:

mov al, combinedMark5

cmp al, 65
jl nextRange20

cmp al, 79
jg nextRange20

lea si, grade5
lea di, subjectGrade5

copy_grade24:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade6 
jmp copy_grade24

nextRange20:

mov al, combinedMark5

cmp al, 80
jl setGrade6

cmp al, 99
jg setGrade6

lea si, grade2
lea di, subjectGrade5

copy_grade25:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade6 
jmp copy_grade25

setGrade6:

mov al, combinedMark6

cmp al, 0
jl nextRange21

cmp al, 45
jg nextRange21

lea si, grade11
lea di, subjectGrade6

copy_grade26:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade7 
jmp copy_grade26

nextRange21:

mov al, combinedMark6

cmp al, 46
jl nextRange22

cmp al, 49
jg nextRange22

lea si, grade10
lea di, subjectGrade6

copy_grade27:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade7 
jmp copy_grade27

nextRange22:   

mov al, combinedMark6

cmp al, 50
jl nextRange23

cmp al, 64
jg nextRange23

lea si, grade8
lea di, subjectGrade6

copy_grade28:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade7 
jmp copy_grade28

nextRange23:

mov al, combinedMark6

cmp al, 65
jl nextRange24

cmp al, 79
jg nextRange24

lea si, grade5
lea di, subjectGrade6

copy_grade29:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade7 
jmp copy_grade29

nextRange24:

mov al, combinedMark6

cmp al, 80
jl setGrade7

cmp al, 99
jg setGrade7

lea si, grade2
lea di, subjectGrade6

copy_grade30:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade7 
jmp copy_grade30

setGrade7:

mov al, combinedMark7

cmp al, 0
jl nextRange25

cmp al, 45
jg nextRange25

lea si, grade11
lea di, subjectGrade7

copy_grade31:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade8 
jmp copy_grade31

nextRange25:

mov al, combinedMark7

cmp al, 46
jl nextRange26

cmp al, 49
jg nextRange26

lea si, grade10
lea di, subjectGrade7

copy_grade32:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade8 
jmp copy_grade32

nextRange26:   

mov al, combinedMark7

cmp al, 50
jl nextRange27

cmp al, 64
jg nextRange27

lea si, grade8
lea di, subjectGrade7

copy_grade33:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade8 
jmp copy_grade33

nextRange27:

mov al, combinedMark7

cmp al, 65
jl nextRange28

cmp al, 79
jg nextRange28

lea si, grade5
lea di, subjectGrade7

copy_grade34:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade8 
jmp copy_grade34

nextRange28:

mov al, combinedMark7

cmp al, 80
jl setGrade8

cmp al, 99
jg setGrade8

lea si, grade2
lea di, subjectGrade7

copy_grade35:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade8 
jmp copy_grade35

setGrade8:

mov al, combinedMark8

cmp al, 0
jl nextRange29

cmp al, 45
jg nextRange29

lea si, grade11
lea di, subjectGrade8

copy_grade36:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade9 
jmp copy_grade36

nextRange29:

mov al, combinedMark8

cmp al, 46
jl nextRange30

cmp al, 49
jg nextRange30

lea si, grade10
lea di, subjectGrade8

copy_grade37:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade9 
jmp copy_grade37

nextRange30:   

mov al, combinedMark8

cmp al, 50
jl nextRange31

cmp al, 64
jg nextRange31

lea si, grade8
lea di, subjectGrade8

copy_grade38:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade9 
jmp copy_grade38

nextRange31:

mov al, combinedMark8

cmp al, 65
jl nextRange32

cmp al, 79
jg nextRange32

lea si, grade5
lea di, subjectGrade8

copy_grade39:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade9 
jmp copy_grade39

nextRange32:

mov al, combinedMark8

cmp al, 80
jl setGrade9

cmp al, 99
jg setGrade9

lea si, grade2
lea di, subjectGrade8

copy_grade40:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je setGrade9 
jmp copy_grade40

setGrade9:

mov al, combinedMark9

cmp al, 0
jl nextRange33

cmp al, 45
jg nextRange33

lea si, grade11
lea di, subjectGrade9

copy_grade41:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je startCalculation5 
jmp copy_grade41

nextRange33:

mov al, combinedMark9

cmp al, 46
jl nextRange34

cmp al, 49
jg nextRange34

lea si, grade10
lea di, subjectGrade9

copy_grade42:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je startCalculation5 
jmp copy_grade42

nextRange34:   

mov al, combinedMark9

cmp al, 50
jl nextRange35

cmp al, 64
jg nextRange35

lea si, grade8
lea di, subjectGrade9

copy_grade43:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je startCalculation5 
jmp copy_grade43

nextRange35:

mov al, combinedMark9

cmp al, 65
jl nextRange36

cmp al, 79
jg nextRange36

lea si, grade5
lea di, subjectGrade9

copy_grade44:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je startCalculation5 
jmp copy_grade44

nextRange36:

mov al, combinedMark9

cmp al, 80
jl startCalculation5

cmp al, 99
jg startCalculation5

lea si, grade2
lea di, subjectGrade9

copy_grade45:

mov al, [si]
mov [di], al
inc si
inc di
cmp al, 0
je startCalculation5 
jmp copy_grade45

startCalculation5:

mov al, subjectGrade1
cmp al, "A"
je grade1A

cmp al, "B"
je grade1B

cmp al, "C"
je grade1C

cmp al, "D"
je grade1D

cmp al, "F"
je grade1F

jmp grade1F

grade1A:

mov al, subjectGpa1
mov subjectGpa1, 4

jmp getGpa2

grade1B:

mov al, subjectGpa1
mov subjectGpa1, 3

jmp getGpa2

grade1C:

mov al, subjectGpa1
mov subjectGpa1, 2

jmp getGpa2

grade1D:

mov al, subjectGpa1
mov subjectGpa1, 1

jmp getGpa2

grade1F:

mov al, subjectGpa1
mov subjectGpa1, 0

jmp getGpa2       

getGpa2:   

mov al, subjectGrade2
cmp al, "A"
je grade2A

cmp al, "B"
je grade2B

cmp al, "C"
je grade2C

cmp al, "D"
je grade2D

cmp al, "F"
je grade2F

jmp grade2F


grade2A:

mov al, subjectGpa2
mov subjectGpa2, 4

jmp getGpa3

grade2B:

mov al, subjectGpa2
mov subjectGpa2, 3

jmp getGpa3

grade2C:

mov al, subjectGpa2
mov subjectGpa2, 2

jmp getGpa3

grade2D:

mov al, subjectGpa2
mov subjectGpa2, 1

jmp getGpa3

grade2F:

mov al, subjectGpa2
mov subjectGpa2, 0

jmp getGpa3       

getGpa3:

mov al, subjectGrade3
cmp al, "A"
je grade3A

cmp al, "B"
je grade3B

cmp al, "C"
je grade3C

cmp al, "D"
je grade3D

cmp al, "F"
je grade3F

jmp grade3F

grade3A:

mov al, subjectGpa3
mov subjectGpa3, 4

jmp getGpa4

grade3B:

mov al, subjectGpa3
mov subjectGpa3, 3

jmp getGpa4

grade3C:

mov al, subjectGpa3
mov subjectGpa3, 2

jmp getGpa4

grade3D:

mov al, subjectGpa3
mov subjectGpa3, 1

jmp getGpa4

grade3F:

mov al, subjectGpa3
mov subjectGpa3, 0

jmp getGpa4       

getGpa4:

mov al, subjectGrade4
cmp al, "A"
je grade4A

cmp al, "B"
je grade4B

cmp al, "C"
je grade4C

cmp al, "D"
je grade4D

cmp al, "F"
je grade4F

jmp grade4F

grade4A:

mov al, subjectGpa4
mov subjectGpa4, 4

jmp getGpa5

grade4B:

mov al, subjectGpa4
mov subjectGpa4, 3

jmp getGpa5

grade4C:

mov al, subjectGpa4
mov subjectGpa4, 2

jmp getGpa5

grade4D:

mov al, subjectGpa4
mov subjectGpa4, 1

jmp getGpa5

grade4F:

mov al, subjectGpa4
mov subjectGpa4, 0

jmp getGpa5       

getGpa5:

mov al, subjectGrade5
cmp al, "A"
je grade5A

cmp al, "B"
je grade5B

cmp al, "C"
je grade5C

cmp al, "D"
je grade5D

cmp al, "F"
je grade5F

jmp grade5F

grade5A:

mov al, subjectGpa5
mov subjectGpa5, 4

jmp getGpa6

grade5B:

mov al, subjectGpa5
mov subjectGpa5, 3

jmp getGpa6

grade5C:

mov al, subjectGpa5
mov subjectGpa5, 2

jmp getGpa6

grade5D:

mov al, subjectGpa5
mov subjectGpa5, 1

jmp getGpa6

grade5F:

mov al, subjectGpa5
mov subjectGpa5, 0

jmp getGpa6       

getGpa6:

mov al, subjectGrade6
cmp al, "A"
je grade6A

cmp al, "B"
je grade6B

cmp al, "C"
je grade6C

cmp al, "D"
je grade6D

cmp al, "F"
je grade6F

jmp grade6F

grade6A:

mov al, subjectGpa6
mov subjectGpa6, 4

jmp getGpa7

grade6B:

mov al, subjectGpa6
mov subjectGpa6, 3

jmp getGpa7

grade6C:

mov al, subjectGpa6
mov subjectGpa6, 2

jmp getGpa7

grade6D:

mov al, subjectGpa6
mov subjectGpa6, 1

jmp getGpa7

grade6F:

mov al, subjectGpa6
mov subjectGpa6, 0

jmp getGpa7       

getGpa7:

mov al, subjectGrade7
cmp al, "A"
je grade7A

cmp al, "B"
je grade7B

cmp al, "C"
je grade7C

cmp al, "D"
je grade7D

cmp al, "F"
je grade7F

jmp grade7F

grade7A:

mov al, subjectGpa7
mov subjectGpa7, 4

jmp getGpa8

grade7B:

mov al, subjectGpa7
mov subjectGpa7, 3

jmp getGpa8

grade7C:

mov al, subjectGpa7
mov subjectGpa7, 2

jmp getGpa8

grade7D:

mov al, subjectGpa7
mov subjectGpa7, 1

jmp getGpa8

grade7F:

mov al, subjectGpa7
mov subjectGpa7, 0

jmp getGpa8       

getGpa8:

mov al, subjectGrade8
cmp al, "A"
je grade8A

cmp al, "B"
je grade8B

cmp al, "C"
je grade8C

cmp al, "D"
je grade8D

cmp al, "F"
je grade8F

jmp grade8F

grade8A:

mov al, subjectGpa8
mov subjectGpa8, 4

jmp getGpa9

grade8B:

mov al, subjectGpa8
mov subjectGpa8, 3

jmp getGpa9

grade8C:

mov al, subjectGpa8
mov subjectGpa8, 2

jmp getGpa9

grade8D:

mov al, subjectGpa8
mov subjectGpa8, 1

jmp getGpa9

grade8F:

mov al, subjectGpa8
mov subjectGpa8, 0

jmp getGpa9       

getGpa9:

mov al, subjectGrade9
cmp al, "A"
je grade9A

cmp al, "B"
je grade9B

cmp al, "C"
je grade9C

cmp al, "D"
je grade9D

cmp al, "F"
je grade9F

jmp grade9F

grade9A:

mov al, subjectGpa9
mov subjectGpa9, 4

jmp start_calculation6

grade9B:

mov al, subjectGpa9
mov subjectGpa9, 3

jmp start_calculation6

grade9C:

mov al, subjectGpa9
mov subjectGpa9, 2

jmp start_calculation6

grade9D:

mov al, subjectGpa9
mov subjectGpa9, 1

jmp start_calculation6

grade9F:

mov al, subjectGpa9
mov subjectGpa9, 0

jmp start_calculation6       

start_calculation6:

mov al, subjectGpa1
mul oneHour

mov convertedG1, al

mov al, subjectGpa2
mul oneHour

mov convertedG2, al 

mov al, subjectGpa3
mul oneHour

mov convertedG3, al

mov al, subjectGpa4
mul oneHour

mov convertedG4, al

mov al, subjectGpa5
mul oneHour

mov convertedG5, al

mov al, subjectGpa6
mul oneHour

mov convertedG6, al

mov al, subjectGpa7
mul oneHour

mov convertedG7, al

mov al, subjectGpa8
mul oneHour

mov convertedG8, al

mov al, subjectGpa9
mul oneHour

mov convertedG9, al

mov al, convertedG1
add al, convertedG2
add al, convertedG3
add al, convertedG4
add al, convertedG5
add al, convertedG6
add al, convertedG7
add al, convertedG8
add al, convertedG9

div totalHours
mov convertedGpa, al

showResult:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, lineSeparater
int 21h

lea dx, newLine
int 21h

mov ah, 09h
lea dx, listHeader2
int 21h

lea dx, newLine
int 21h

mov ah, 09h
lea dx, lineSeparater
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject1
int 21h 

lea dx, subjectGrade1
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject2
int 21h 

lea dx, subjectGrade2
int 21h  

lea dx, newLine
int 21h

lea dx, resultSubject3
int 21h 

lea dx, subjectGrade3
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject4
int 21h 

lea dx, subjectGrade4
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject5
int 21h 

lea dx, subjectGrade5
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject6
int 21h 

lea dx, subjectGrade6
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject7
int 21h 

lea dx, subjectGrade7
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject8
int 21h 

lea dx, subjectGrade8
int 21h

lea dx, newLine
int 21h

lea dx, resultSubject9
int 21h 

lea dx, subjectGrade9
int 21h

lea dx, newLine
int 21h

mov ah, 09h
lea dx, lineSeparater
int 21h

lea dx, newLine
int 21h

lea dx, resultMsg1
int 21h

lea dx, studentName + 2
int 21h

lea dx, newLine
int 21h

lea dx, newLine
int 21h

lea dx, resultMsg2
int 21h

mov al, convertedGpa
mov bl, 10
lea si, buffer + 3
mov cx, 0

converted_gpa:

xor ah, ah
div bl
add ah, "0"
mov [si], ah
dec si
inc cx
cmp al, 0
jne converted_gpa

lea di, buffer
add di, 4
mov [di], "$"

mov ah, 09h
lea dx, [si + 1]
int 21h

lea dx, resultMsg3
int 21h

lea dx, newLine
int 21h

lea dx, resultMsg4
int 21h
                  
mov al, totalHours
mov bl, 10
lea si, buffer + 3
mov cx, 0

converted_hour:

xor ah, ah
div bl
add ah, "0"
mov [si], ah
dec si
inc cx
cmp al, 0
jne converted_hour

lea di, buffer
add di, 4
mov [di], "$"

mov ah, 09h
lea dx, [si + 1]
int 21h

lea dx, resultMsg5
int 21h

lea dx, newLine
int 21h

mov ah, 09h
lea dx, lineSeparater
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg4
int 21h

mov ah, 01h
int 21h
mov bl, al

jmp main_access

sub1:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject1Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject1Mark2, al

mov al, subject1Mark1
mov bl, 10
mul bl
mov subject1Mark1,al

mov al, subject1Mark1
add al, subject1Mark2
mov combinedMark1, al

jmp start_calculation2

sub2:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject2Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject2Mark2, al

mov al, subject2Mark1
mov bl, 10
mul bl
mov subject2Mark1,al

mov al, subject2Mark1
add al, subject2Mark2
mov combinedMark2, al

jmp start_calculation2

sub3:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject3Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject3Mark2, al

mov al, subject3Mark1
mov bl, 10
mul bl
mov subject3Mark1,al                 
                 
mov al, subject3Mark1
add al, subject3Mark2
mov combinedMark3, al

jmp start_calculation2

sub4:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject4Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject4Mark2, al

mov al, subject4Mark1
mov bl, 10
mul bl
mov subject4Mark1,al            
            
mov al, subject4Mark1
add al, subject4Mark2
mov combinedMark4, al

jmp start_calculation2

sub5:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject5Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject5Mark2, al

mov al, subject5Mark1
mov bl, 10
mul bl
mov subject5Mark1,al            
            
mov al, subject5Mark1
add al, subject5Mark2
mov combinedMark5, al

jmp start_calculation2

sub6:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject6Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject6Mark2, al

mov al, subject6Mark1
mov bl, 10
mul bl
mov subject6Mark1,al            
            
mov al, subject6Mark1
add al, subject6Mark2
mov combinedMark6, al

jmp start_calculation2

sub7:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject7Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject7Mark2, al

mov al, subject7Mark1
mov bl, 10
mul bl
mov subject7Mark1,al            
            
mov al, subject7Mark1
add al, subject7Mark2
mov combinedMark7, al

jmp start_calculation2

sub8:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject8Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject8Mark2, al

mov al, subject8Mark1
mov bl, 10
mul bl
mov subject8Mark1,al

mov al, subject8Mark1
add al, subject8Mark2
mov combinedMark8, al

jmp start_calculation2

sub9:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg7
int 21h

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject9Mark1, al 

mov ah, 01h
int 21h
mov bl, al

cmp bl, "0"
jl notNumber

cmp bl, "9"
jg notNumber

sub al, 30h
mov subject9Mark2, al

mov al, subject9Mark1
mov bl, 10
mul bl
mov subject9Mark1,al            
            
mov al, subject9Mark1
add al, subject9Mark2
mov combinedMark9, al

jmp start_calculation2

notNumber:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h 

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, errorMsg1
int 21h

jmp start_calculation2

view_list:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, lineSeparater2
int 21h

lea dx, newLine
int 21h
     
mov ah, 09h
lea dx, listHeader
int 21h

lea dx, newLine
int 21h

mov ah, 09h
lea dx, lineSeparater2
int 21h

lea dx, newLine
int 21h

lea dx, row1
int 21h     
     
lea dx, newLine
int 21h

lea dx, row2
int 21h      
     
lea dx, newLine
int 21h

lea dx, row3
int 21h 

lea dx, newLine
int 21h

lea dx, row4
int 21h 

lea dx, newLine
int 21h

lea dx, row5
int 21h 

lea dx, newLine
int 21h

mov ah, 09h
lea dx, lineSeparater2
int 21h

lea dx, newLine
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, mainMsg4
int 21h

mov ah, 01h
int 21h
mov bl, al

jmp main_access

invalid_username:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, loginMsg4
int 21h

jmp main_menu

logged_out:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h
     
mov ah, 09h
lea dx, logoutMsg
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

jmp show_logo

exit:

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 02h
mov dl, 0dh
int 21h
mov dl, 0ah
int 21h

mov ah, 09h
lea dx, exitMsg
int 21h

mov ah, 4ch
int 21h