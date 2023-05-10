//Name: Henry Zhang and Kevin Kolyakov
//Date: May 9
//Teacher: Ms.Basaraba
//Description: This program will tell is about exploring different ecosystems and learning about the animals and environment in each ecosystem.

//declaration section
boolean isInside1 = false;//each isInside variable determines which screen to switch to from the 8 animated screens
boolean isInside2 = false;
boolean isInside3 = false;
boolean isInside4 = false;
boolean isInside5 = false;
boolean isInside6 = false;
boolean isInside7 = false;
boolean isInside8 = false;
int transparency = 0;//stores the transparency of the splash screen
int loadingX=100;//stores the movement of the loading bar
Boolean load=false;//detects when the loading bar has finished
float wolfX=0; //controls wolf x coordinate
float wolfY=200; //controls wolf y coordinate
float rabbitX=700; //controls rabbit x coordinate
float rabbitY=300; //controls rabbit y coordinate
Boolean rabbitAlive=true; //boolean variable that detects if rabbit is alive
float eelX=70;//stores the x value of the eel
float eelY=500;//stores the y value of the eel
float eelC=1;//stores the movement amount of the eel
float clownX=-200;//stores the x value of the clownfish
float clownY=250;//stores the y value of the clownfish
float turtleX=1000;//stores the x value of the turtle
float turtleY=400;//stores the y value of the turtle
float turtleC=2;//stores the movement amount of the turtle
boolean info;//stores info button was clicked
int bubbleY=600;//stores the y value of the bubble
float owlX=0;//stores the x value of the owl
float owlY=0;//stores the y value of the owl
float owlXC=5;//stores the x value change of the owl
float owlYC=5;//stores the y value change of the owl
float ratX=810;//stores the x value of the rat
Boolean ratAlive=true;//stores if the rat has been killed
int anglerX=700;//stores the x value of the anglerfish
int fishY=250;//stores the y value of the fishes
int anglerC=4;//is added to the x value to change the x position of the anglerfish
int lanternX=-200;//stores the x value of the anglerfish
int lanternC=2;//is added to the x value to change the x position of the lanternfish
int lanternTrans = 0;//stores the transparency of the anglerfish
int camelX=900;//stores the x value of the camel
int camelY=100;//stores the y value of the camel
int addaxX=250;//stores the x value of the addax
int addaxY=300;//stores the y value of the addax
int coyoteX=0;//controls x coordinate of coyote
int coyoteY=200;//controls y coordinate of coyote
int prairieX=50;//controls x coordinate of prairie dog
int prairieY=230;//controls y coordinate of prairie dog
Boolean coyoteClose=false;//used to detect if the coyote is close to the prairie dog
int elephantX=800;//controls x coordinate of elephant
int elephantY=340;//controls y coordinate of elephant
int elephantC=2;//controls change of the X coordinate of elephant
int lionX=850;//controls x coordinate of lion
int lionY=250;//controls y coordinate of lion
int lionC=0;//controls change of the X coordinate of lion
float pantherX = 800; //controls the x coordinate of the panther
float pantherY = 400; //controls the y coordinate of the panter
int pantherXC=3; //controls how quickly the panther moves along the x axis
Boolean close=false; //detects if the panther is close to the snake
float snakeX=100; //controls the x coordinate of the snake
float snakeY=2400; //controls the y coordinate of the snake
int hummingX = -400; //controls the x coordinate of the bird
int hummingY = 250; //controls the y coordinate of the bird
float hummingYC=1; //controls the direction that the bird goes along the y axis

void info() {
  PFont big = loadFont("Cambria-Bold-48.vlw");//for big font
  PFont small = loadFont("Cambria-Bold-28.vlw");//for small font
  stroke(0);
  strokeWeight(2);
  //shows text if the mouse is clicked inside the circle and it goes away if the button is clicked again
  if (dist(mouseX, mouseY, 40, 40) <= 25 && mousePressed) {
    delay(300);
    if (info) {
      info = false;
    } else {
      info = true;
    }
  } 
  if (info) {
    fill(255);
    rect(100, 50, 600, 400);
    textAlign(LEFT);
    fill(0);
    if (isInside1) {
      textFont(big);
      text("Tropical Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Black Panther \n - Snake \n - Hummingbird", 155, 170);
      text("Temperature Range: \n 20° to 25°C", 390, 170);
      text("\n\n\n\nFun Fact:\nRainforests cover less than 3% of \nthe planet, yet they are home to more \nthan half our planet's species", 155, 180);
    } else if (isInside2) {
      textFont(big);
      text("Savanna", 150, 120);
      textFont(small);
      text("Animals: \n - Lion \n - Elephant", 155, 170);
      text("Temperature Range: \n 20° to 30°C", 390, 170);
      text("\n\n\n\nFun Fact:\nThe first human remains were found \nin a savanna called the Serengeti", 155, 170);
    } else if (isInside3) {
      textFont(big);
      text("Coniferous Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Wolf \n - Rabbit", 155, 170);
      text("Temperature Range: \n -40° to 20°C", 390, 170);
      text("\n\n\n\nFun Fact:\nConiferous forests considered the \nlargest land-based biome, covering \nover 15% of Earth’s total land area", 155, 170);
    } else if (isInside4) {
      textFont(big);
      text("Desert", 150, 120);
      textFont(small);
      text("Animals: \n - Camel \n - Addax", 155, 170);
      text("Temperature Range: \n -5° to 40°C", 390, 170);
      text("\n\n\n\nFun Fact:\nAntarctica is the largest \ncold desert on Earth", 155, 170);
    } else if (isInside5) {
      textFont(big);
      text("Deciduous Forest", 150, 120);
      textFont(small);
      text("Animals: \n - Owl \n - Mouse", 155, 170);
      text("Temperature Range: \n -30° to 30°C", 390, 170);
      text("\n\n\n\nFun Fact:\nTrees in this deciduous forest change \ncolors every season because they stop \nproducing chlorophyll", 155, 170);
    } else if (isInside6) {  
      textFont(big);
      text("Coral Reef", 150, 120);
      textFont(small);
      text("Animals: \n - Clownfish \n - Sea Turtle \n - Eel \n - Coral", 155, 170);
      text("Temperature Range: \n 20° to 40°C", 390, 170);
      text("\n\n\n\n\nFun Fact:\nCoral reefs make up 1% of the ocean, \nbut they contain 25% of all marine life", 155, 170);
    } else if (isInside7) {
      textFont(big);
      text("Prairie", 150, 120);
      textFont(small);
      text("Animals: \n - Coyote \n - Prairie Dog", 155, 170);
      text("Temperature Range: \n -20° to 30°C", 390, 170);
      text("\n\n\n\nFun Fact:\nPrairies formed about 8,000 years ago", 155, 170);
    } else if (isInside8) {
      textFont(big);
      text("Deep Sea", 150, 120);
      textFont(small);
      text("Animals: \n - Lanternfish \n - Anglerfish", 155, 170);
      text("Temperature Range: \n -5° to 5°C", 390, 170);
      text("\n\n\n\nFun Fact:\nApproximately 98 percent of the \noceans' species live in, on or just above\nthe floor of the sea", 155, 170);
    } else {
      textFont(big);
      text("Main Menu", 150, 120);
      textFont(small);
      text("Each info button will show\ninformation about the ecosystem. \n", 155, 170);
      text("\n\n\nIn the ecosystems, use the \narrow keys to change the ecosystem. ", 155, 170);
    }
    textAlign(CENTER, CENTER);
  }
  fill(46, 90, 201);
  // Change colour of circle depending on collision
  if (dist(mouseX, mouseY, 40, 40) <= 25) {
    fill(3, 46, 153);
  }
  ellipse(40, 40, 50, 50);
  fill(255);
  text("i", 40, 40);
}


void menu() {
  PFont big = loadFont("Cambria-Bold-48.vlw");//for big font
  PFont small = loadFont("Cambria-Bold-28.vlw");//for small font
  background(161, 214, 202);//background colour
  textFont(big);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Exploring Ecosystems:", 400, 100);//title
  textFont(small);
  text("\n\n\nBy: Henry Zhang and Kevin Kolyakov", 400, 100);//authors
  text("Ecosystems:", 400, 250);//subtitle



  //buttons
  //the colour of the button changes if it inside the button depending on the x and y values of the coordinates
  if (mouseX > 50 && mouseX < 200 && mouseY >280 && mouseY < 355) {
    fill(54, 240, 12);
  } else {
    fill(255);
  }

  //button
  rect(50, 280, 150, 75, 15);
  fill(0);
  text("Tropical\nForest", 120, 320);

  //the screen changes if it inside the button depending on the x and y values of the coordinates and the user clicks
  if (mouseX > 50 && mouseX < 200 && mouseY >280 && mouseY < 355 && mousePressed)
  {
    isInside1 =true;
    info=false;
  } else {
    isInside1=false;
  }

  if (mouseX > 50 && mouseX < 200 && mouseY > 380 && mouseY < 455)
  {
    fill(227, 182, 18);
  } else {
    fill(255);
  }

  rect(50, 380, 150, 75, 15);
  fill(0);
  text("Savanna", 120, 420);

  if (mouseX > 50 && mouseX < 200 && mouseY > 380 && mouseY < 455 && mousePressed)
  {
    isInside2 =true;
    info=false;
  } else {
    isInside2=false;
  }

  if (mouseX > 250 && mouseX < 400 && mouseY > 280 && mouseY < 355)
  {
    fill(33, 140, 11);
  } else {
    fill(255);
  }

  rect(250, 280, 150, 75, 15);
  fill(0);
  text("Coniferous\nForest", 325, 320);

  if (mouseX > 250 && mouseX < 400 && mouseY >280 && mouseY < 355 && mousePressed)
  {
    isInside3 =true;
    info=false;
  } else {
    isInside3=false;
  }

  if (mouseX > 250 && mouseX < 400 && mouseY >380 && mouseY < 455)
  {
    fill(232, 185, 104);
  } else {
    fill(255);
  }

  rect(250, 380, 150, 75, 15);
  fill(0);
  text("Desert", 325, 420);

  if (mouseX > 250 && mouseX < 400 && mouseY >380 && mouseY < 455 && mousePressed)
  {
    isInside4 =true;
    info=false;
  } else {
    isInside4 =false;
  }

  if (mouseX > 450 && mouseX < 600 && mouseY >280 && mouseY < 355)
  {
    fill(46, 184, 101);
  } else {
    fill(255);
  }

  rect(450, 280, 150, 75, 15);
  fill(0);
  text("Deciduous\nForest", 523, 320);

  if (mouseX > 450 && mouseX < 600 && mouseY >280 && mouseY < 355 && mousePressed)
  {
    isInside5 =true;
    info=false;
  } else {
    isInside5 =false;
  }

  if (mouseX > 450 && mouseX < 600 && mouseY >380 && mouseY < 455)
  {
    fill(63, 200, 235);
  } else {
    fill(255);
  }


  rect(450, 380, 150, 75, 15);
  fill(0);
  text("Coral Reef", 523, 420);

  if (mouseX > 450 && mouseX < 600 && mouseY >380 && mouseY < 455 && mousePressed)
  {
    isInside6 =true;
    info=false;
  } else {
    isInside6 =false;
  }

  if (mouseX > 630 && mouseX < 780 && mouseY >280 && mouseY < 355)
  {
    fill(223, 232, 60);
  } else {
    fill(255);
  }

  rect(630, 280, 150, 75, 15);
  fill(0);
  text("Prairie", 700, 320);

  if (mouseX > 630 && mouseX < 780 && mouseY >280 && mouseY < 355 && mousePressed)
  {
    isInside7 =true;
    info=false;
  } else {
    isInside7 =false;
  }

  if (mouseX > 630 && mouseX < 780 && mouseY >380 && mouseY < 455)
  {
    fill(18, 58, 128);
  } else {
    fill(255);
  }

  rect(630, 380, 150, 75, 15);
  fill(0);
  text("Deep Sea", 700, 420);

  if (mouseX > 630 && mouseX < 780 && mouseY >380 && mouseY < 455 && mousePressed)
  {
    isInside8 =true;
    info=false;
  } else {
    isInside8 =false;
  }



  if (mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 75)
  {
    fill(196, 191, 181);
  } else {
    fill(255);
  }

  rect(700, 0, 800, 75);
  fill(0);
  text("Exit", 750, 40);

  if (mouseX > 700 && mouseX < 800 && mouseY > 0 && mouseY < 75 && mousePressed)
  {
    exit();
  }
  info();
}

void menuReturn() {
  //menu button
  if (mouseX > 720 && mouseX < 800 && mouseY > 0 && mouseY < 75)
  {
    fill(196, 191, 181);
  } else {
    fill(255);
  }

  rect(720, 0, 90, 75);
  fill(0);
  text("Menu", 760, 40);

  //menu button returns back to the menu by making all the variables false
  if (mouseX > 720 && mouseX < 800 && mouseY > 0 && mouseY < 75 && mousePressed)
  {
    isInside1 = false;
    isInside2 = false;
    isInside3 = false;
    isInside4 = false;
    isInside5 = false;
    isInside6 = false;
    isInside7 = false;
    isInside8 = false;
    info=false;
    delay(300);
  }
}

void rightArrow() {
  rectMode(CENTER);
  fill(255);
  rect(730, 460, 60, 10);
  rectMode(CORNER);
  triangle(750, 445, 750, 475, 770, 460);
}

void leftArrow() {
  rectMode(CENTER);
  fill(255);
  rect(70, 460, 60, 10);
  rectMode(CORNER);
  triangle(50, 445, 50, 475, 30, 460);
}

//void setup
void setup() {
  size(800, 500);
  noStroke();
}

//void draw
void draw() {
  //changes the screen from the menu to an ecosystem
  if (isInside1) {
    tropForest();
    noStroke();
    menuReturn();
    rightArrow();
    noStroke();
    //if the right arrow is pressed the screen changes to the next ecosystem
    if ( keyPressed && keyCode == RIGHT) {
      delay(200);
      isInside1=false;
      isInside2=true;
      info=false;
    }
  } else if (isInside2) {
    savanna();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside2=false;
      isInside3=true;
      info=false;
    }
    //if the left arrow is pressed the screen changes to the previous ecosystem
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside2=false;
      isInside1=true;
    }
  } else if (isInside3) {
    coniferous();  
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside3=false;
      isInside4=true;
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside3=false;
      isInside2=true;
      info=false;
    }
  } else if (isInside4) {
    desert();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside4=false;
      isInside5=true;
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside4=false;
      isInside3=true;
      info=false;
    }
  } else if (isInside5) {
    deciduous();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside5=false;
      isInside6=true;
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside5=false;
      isInside4=true;
      info=false;
    }
  } else if (isInside6) {
    coral();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside6=false;
      isInside7=true;
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside6=false;
      isInside5=true;
      info=false;
    }
  } else if (isInside7) {
    prairie();
    noStroke();
    menuReturn();
    rightArrow();
    leftArrow();
    noStroke();
    if (keyCode == RIGHT && keyPressed == true) {
      delay(200);
      isInside7=false;
      isInside8=true;
      info=false;
    }
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside7=false;
      isInside6=true;
      info=false;
    }
  } else if (isInside8) {
    deepSea();
    noStroke();
    menuReturn();
    leftArrow();
    noStroke();
    if (keyCode == LEFT && keyPressed == true) {
      delay(200);
      isInside8=false;
      isInside7=true;
      info=false;
    }
  } else if (transparency == 255) {
    noStroke();
    menu();//if none of them are true the menu screen is always displayed
  } else {//splash screen
    background(200);
    if (load) {
      transparency+=3;//transparency decreases by 3 each time
    }
    PFont big = loadFont("Cambria-Bold-48.vlw");//for big font
    PFont small = loadFont("Cambria-Bold-28.vlw");//for small font
    fill(0);
    textFont(big);
    text("                Made By:\n\nHenry Zhang & Kevin Kolyakov", 50, 200);
    fill(255);
    rect(100, 370, loadingX, 40);
    stroke(255);
    noFill();
    rect(90, 360, 620, 60);
    fill(0);
    textFont(small);
    if (load==false) {//if the bar hasn't reached the end yet
      if (second()%4==0) {//every second the text switches between 4 different variants
        text("Loading.", 340, 400);
      } else if (second()%4==1) {
        text("Loading..", 340, 400);
      } else if (second()%4==2) {
        text("Loading...", 340, 400);
      } else {
        text("Loading", 340, 400);
      }
    }
    textAlign(LEFT);
    if (loadingX==600) {//if the rectangle is long enough
      load=true;//finished loading
    } else {
      loadingX+=2;//if not long enough, keep adding
    }
    fill(161, 214, 202, transparency);//covers the entire screen with the background of the menu
    rect(0, 0, 800, 500);
  }
}

void coniferous() {
  noStroke();
  background();
  if ((rabbitX+90)-(wolfX+290)<20) { //detects if the wolf and rabbit collides
    rabbitAlive=false; //computer sets rabbit boolean as dead
  }
  if (rabbitAlive) {
    rabbitX-=2; //whenever rabbit is alive, rabbit moves to the left
  } else {
    rabbitX=wolfX+190; //whenever rabbit is dead, it follows the wolf
    rabbitY=170;
  }
  wolfX+=2; //wolf always moves no matter what
  rabbit();
  wolf();
  if (wolfX+290>1200) { //detects when the wolf leaves the screen far enough
    rabbitAlive=true; //makes the rabbit alive
    rabbitX=700;//teleports the rabbit 
    rabbitY=300;
    wolfX=-400;//teleports the wolf to the left side of the screen
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=445 && mouseY<=475) {//if click right arrow, move to the right
    delay(200);
    isInside3=false;
    isInside4=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=445 && mouseY<=475) {//if click left arrow, move to the left
    delay(200);
    isInside3=false;
    isInside2=true;
    info=false;
  }
}

void background() {
  background(196, 255, 252); //sky
  fill(169, 183, 184);
  beginShape();//mountain
  vertex(250, 100);
  vertex(350, 200);
  vertex(600, 400);
  vertex(50, 400);
  vertex(200, 200);
  endShape(CLOSE);
  fill(104, 156, 117);
  rect(0, 300, 800, 200);//ground
  fill(69, 157, 163);
  ellipse(240, 350, 300, 50);//pond

  //variables used to make placing trees easier
  float treeX=660; //controls x coordinate of trees
  float treeY=250; //controls y coordinate of trees
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);//trunk
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);//leafs
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);//leafs

  treeX=720;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=100;
  treeY=220;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=45;
  treeY=260;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=150;
  treeY=300;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=270;
  treeY=230;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=406;
  treeY=277;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  treeX=477;
  treeY=220;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);

  pushMatrix();
  scale(1.3);//larger tree variant
  treeX=445;
  treeY=170;
  fill(66, 58, 43);
  rect(treeX, treeY, 20, 90);
  fill(60, 110, 62);
  triangle(treeX+10, treeY-30, treeX-10, treeY+30, treeX+30, treeY+30);
  triangle(treeX+10, treeY-50, treeX-10, treeY+10, treeX+30, treeY+10);
  popMatrix();
}

void wolf() {
  fill(100);
  beginShape();//outline of wolf
  vertex(wolfX+191, wolfY+96);
  vertex(wolfX+217, wolfY+58);
  vertex(wolfX+232, wolfY+48);
  vertex(wolfX+241, wolfY+37);
  vertex(wolfX+244, wolfY+43);
  vertex(wolfX+251, wolfY+35);
  vertex(wolfX+253, wolfY+55);
  vertex(wolfX+263, wolfY+61);
  vertex(wolfX+268, wolfY+73);
  vertex(wolfX+293, wolfY+81);
  vertex(wolfX+288, wolfY+97);
  vertex(wolfX+261, wolfY+98);
  vertex(wolfX+256, wolfY+116);
  vertex(wolfX+228, wolfY+163);
  vertex(wolfX+208, wolfY+179);
  vertex(wolfX+202, wolfY+244);
  vertex(wolfX+212, wolfY+249);
  vertex(wolfX+218, wolfY+259);
  vertex(wolfX+191, wolfY+260);
  vertex(wolfX+179, wolfY+239);
  vertex(wolfX+174, wolfY+177);
  vertex(wolfX+141, wolfY+174);
  vertex(wolfX+115, wolfY+162);
  vertex(wolfX+93, wolfY+191);
  vertex(wolfX+70, wolfY+213);
  vertex(wolfX+78, wolfY+245);
  vertex(wolfX+88, wolfY+251);
  vertex(wolfX+96, wolfY+256);
  vertex(wolfX+86, wolfY+263);
  vertex(wolfX+67, wolfY+257);
  vertex(wolfX+60, wolfY+248);
  vertex(wolfX+55, wolfY+248);
  vertex(wolfX+43, wolfY+202);
  vertex(wolfX+57, wolfY+159);
  vertex(wolfX+48, wolfY+143);
  vertex(wolfX+49, wolfY+125);
  vertex(wolfX+44, wolfY+175);
  vertex(wolfX+33, wolfY+190);
  vertex(wolfX+21, wolfY+207);
  vertex(wolfX+7, wolfY+218);
  vertex(wolfX+5, wolfY+177);
  vertex(wolfX+23, wolfY+131);
  vertex(wolfX+49, wolfY+101);
  vertex(wolfX+93, wolfY+91);
  vertex(wolfX+145, wolfY+98);
  endShape(CLOSE);
  fill(0);
  beginShape();//eye
  vertex(wolfX+266, wolfY+68);
  vertex(wolfX+260, wolfY+73);
  vertex(wolfX+269, wolfY+73);
  endShape();
  beginShape();//nose
  vertex(wolfX+284, wolfY+78);
  vertex(wolfX+293, wolfY+80);
  vertex(wolfX+291, wolfY+87);
  endShape();
}

void rabbit() {
  //body and head
  fill(200);
  noStroke();
  ellipse(100+rabbitX, 100+rabbitY, 50, 50);
  ellipse(110+rabbitX, 80+rabbitY, 15, 50);
  ellipse(90+rabbitX, 80+rabbitY, 15, 50);
  ellipse(130+rabbitX, 125+rabbitY, 80, 50);
  //legs
  ellipse(110+rabbitX, 145+rabbitY, 20, 20);
  ellipse(150+rabbitX, 145+rabbitY, 20, 20);
  //tail
  ellipse(170+rabbitX, 130+rabbitY, 20, 20);
  //eyes
  fill(0);
  ellipse(110+rabbitX, 95+rabbitY, 6, 6);
  ellipse(90+rabbitX, 95+rabbitY, 6, 6);
}

void coral() {
  noStroke();
  backgroundCoral();

  eel();

  //makes the turtle move up and left and then only left
  turtle();
  turtleX-=2;
  turtleY-=turtleC;
  if (turtleY==150)
    turtleC=0;
  if (turtleX==-200) {//makes the turtle go back to its original position
    turtleX=1000;
    turtleY=400;
    turtleC=2;
  }

  //draws the clownfishes in the different positions
  clown();
  pushMatrix();
  translate(-50, -20);
  clown();
  popMatrix();
  pushMatrix();
  translate(60, -20);
  clown();
  popMatrix();
  pushMatrix();
  translate(70, 40);
  clown();
  popMatrix();



  clownX+=4;
  if (clownX==900) {
    clownX=-200;
  }

  //eel moves up and slightly right
  eelY-=eelC;
  eelX+=eelC/2;
  if (eelX==120) {//if the x is 120 the eel goes back
    eelC=-1;
  }
  if (eelX==70) {//if the eel reaches its original position, the eel goes back up
    eelC=+1;
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=445 && mouseY<=475) {//if click right arrow, move to the right
    delay(200);
    isInside6=false;
    isInside7=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=445 && mouseY<=475) {//if click left arrow, move to the left
    delay(200);
    isInside6=false;
    isInside5=true;
    info=false;
  }
}

void backgroundCoral() {
  //background of coral reef
  background(44, 181, 219);

  //coral
  fill(232, 35, 35);
  rect(650, 400, 200, 200, 20);
  //coral holes
  fill(44, 181, 219);
  ellipse(700, 400, 10, 10);
  ellipse(750, 420, 10, 10);
  ellipse(650, 440, 10, 10);
  ellipse(800, 480, 10, 10);
  ellipse(730, 490, 10, 10);
  ellipse(690, 460, 10, 10);
  ellipse(640, 480, 10, 10);
  ellipse(800, 430, 10, 10);
  pushMatrix();
  translate(-20, 15);
  ellipse(700, 400, 10, 10);
  ellipse(750, 420, 10, 10);
  ellipse(650, 440, 10, 10);
  ellipse(800, 480, 10, 10);
  ellipse(730, 490, 10, 10);
  ellipse(690, 460, 10, 10);
  ellipse(640, 480, 10, 10);
  ellipse(800, 430, 10, 10);
  popMatrix();

  //coral lines
  stroke(232, 35, 35);
  strokeWeight(10);
  line(750, 400, 750, 350);
  line(700, 470, 620, 470);
  line(720, 400, 720, 380);
  line(750, 450, 600, 450);


  //bubbles
  bubbleY-=2;
  stroke(255);
  strokeWeight(3);
  ellipse(400, bubbleY+10, 40, 40);
  fill(255);
  ellipse(405, bubbleY, 10, 10);

  if (bubbleY==250) {
    bubbleY=600;
  }

  //geiser
  noStroke();
  fill(77, 55, 52);
  ellipse(400, 500, 100, 50);
  fill(44, 181, 219);
  arc(400, 475, 20, 20, 0, PI);
}

//clownfish
void clown() {

  //tail
  strokeWeight(1);
  stroke(0);
  fill(242, 153, 10);
  ellipse(clownX-25, clownY, 15, 15);

  //fins
  ellipse(clownX-10, clownY-10, 15, 10);
  ellipse(clownX+4, clownY-10, 15, 13);

  //body
  noStroke();
  ellipse(clownX, clownY, 50, 25);

  //stripes
  stroke(255);
  strokeWeight(5);
  noFill();
  arc(clownX, clownY, 25, 27, PI+HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);
  arc(clownX-20, clownY, 25, 27, PI+HALF_PI+QUARTER_PI, TWO_PI+QUARTER_PI);

  //eye
  stroke(0);
  strokeWeight(3);
  point(clownX+20, clownY-3);

  //body fin
  strokeWeight(1);
  fill(242, 153, 10);
  arc(clownX, clownY, 15, 15, HALF_PI, PI+HALF_PI, OPEN);
}

//eel
void eel() {
  noStroke();

  //body
  fill(83, 30, 143);
  ellipse(eelX, eelY, 150, 100);
  fill(136, 126, 148);
  ellipse(eelX+16, eelY, 135, 85);
  fill(44, 181, 219);
  ellipse(eelX+20, eelY, 135, 85);

  //head
  fill(83, 30, 143);
  ellipse(eelX+21, eelY-40, 50, 25);
  fill(83, 30, 143);
  ellipse(eelX+30, eelY-40, 40, 20);

  //mouth
  fill(235, 82, 169);
  triangle(eelX+21, eelY-35, eelX+50, eelY-38, eelX+43, eelY-30);

  //eye
  fill(255);
  ellipse(eelX+30, eelY-43, 9, 9);
  fill(0);
  ellipse(eelX+30, eelY-43, 4, 4);

  //head fin
  fill(136, 126, 148);
  arc(eelX-8, eelY-42, 15, 15, QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  stroke(0);
  strokeWeight(1);
  line(eelX-5, eelY-42, eelX-15, eelY-42);
  line(eelX-5, eelY-42, eelX-13, eelY-45);
  line(eelX-5, eelY-42, eelX-13, eelY-39);

  //tail fin
  fill(136, 126, 148);
  noStroke();
  ellipse(eelX+20, eelY+45, 70, 30);
  stroke(0);
  strokeWeight(1);
  line(eelX-15, eelY+45, eelX+40, eelY+45);
  line(eelX-15, eelY+45, eelX+35, eelY+35);
  line(eelX-15, eelY+45, eelX+35, eelY+55);
  line(eelX-15, eelY+45, eelX+20, eelY+32);
  line(eelX-15, eelY+45, eelX+20, eelY+58);

  //rocks
  pushMatrix();
  fill(132, 138, 118);
  translate(-400, 250);
  noStroke();
  quad(400, 250, 500, 250, 480, 200, 440, 200);
  quad(400+100, 250+50, 500+50, 250, 480+50, 200, 440+50, 200);
  quad(400-100, 250-50, 500-50, 250, 480-50, 200, 440+50, 20+200);
  popMatrix();
}

void turtle() {
  //body
  noStroke();
  fill(125, 219, 131);
  ellipse(turtleX, turtleY, 100, 70);
  //fins
  fill(57, 191, 54);
  pushMatrix();
  translate(turtleX+10, turtleY+10);
  rotate(QUARTER_PI);
  pushMatrix();
  translate(0, 72);
  arc(0, 0, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  arc(0, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(57, 191, 54);
  pushMatrix();
  translate(turtleX+65, turtleY+5);
  rotate(QUARTER_PI);
  pushMatrix();
  translate(0, 72);
  arc(0, 0, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  arc(0, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  //shell
  fill(51, 150, 57);
  ellipse(turtleX, turtleY-7, 100, 60);

  //shell lines
  noFill();
  stroke(33, 122, 31);
  arc(turtleX-10, turtleY-7, 90, 60, PI+HALF_PI, TWO_PI+HALF_PI);
  stroke(23, 92, 21);
  noFill();
  stroke(33, 122, 31);
  arc(turtleX-40, turtleY-7, 90, 40, PI+HALF_PI, TWO_PI+HALF_PI);
  stroke(23, 92, 21);
  noFill();
  stroke(33, 122, 31);
  arc(turtleX-20, turtleY-7, 80, 50, PI+HALF_PI, TWO_PI+HALF_PI);
  line(turtleX-60, turtleY, turtleX+50, turtleY);
  line(turtleX-60, turtleY+10, turtleX+40, turtleY+10);
  line(turtleX-60, turtleY-10, turtleX+50, turtleY-10);
  line(turtleX-45, turtleY-20, turtleX+45, turtleY-20);
  stroke(23, 92, 21);
  noFill();
  strokeWeight(5);
  arc(turtleX, turtleY-7, 100, 60, 0, PI);

  //head
  noStroke();
  fill(57, 191, 54);
  arc(turtleX-60, turtleY-2, 40, 40, QUARTER_PI, HALF_PI+PI+QUARTER_PI, OPEN);
  //eye
  stroke(0);
  strokeWeight(5);
  point(turtleX-65, turtleY-5);
  //mouth
  fill(44, 181, 219);
  noStroke();
  arc(turtleX-80, turtleY-2, 20, 20, 0, PI);
}

void decBackground() {
  background(#1D2058);
  //branch
  fill(#865B27);
  ellipse(120, 200, 50, 50);
  rectMode(CENTER);
  rect(70, 200, 100, 50);
  //log
  rect(40, 200, 50, 400);
  rectMode(CORNER);
  //hole in the log
  fill(#2C271F);
  ellipse(50, 240, 20, 20);
  //leaves
  fill(#638969);
  ellipse(30, 5, 300, 100);
  //ground
  fill(#264B2B);
  rect(0, 380, 800, 120);
  //moon
  fill(#FFFEE3);
  ellipse(600, 100, 150, 150);
  fill(#1D2058);
  ellipse(630, 100, 120, 120);
}

void rat() {
  fill(200);
  arc(ratX, 380, 20, 20, PI, TWO_PI);
  ellipse(ratX-2, 370, 5, 5);
  stroke(200);
  line(ratX+5, 376, ratX+20, 370);
  noStroke();
  fill(0);
  ellipse(ratX-3, 376, 2, 2);
  if (ratX!=400) {
    ratX-=2;
  }
}

void owl() {
  //head
  fill(77, 63, 47);
  ellipse(owlX+125, owlY+100, 100, 60);
  //body
  fill(92, 84, 75);
  ellipse(owlX+125, owlY+140, 90, 80);
  //beak
  fill(217, 169, 59);
  triangle(owlX+125, owlY+130, owlX+140, owlY+110, owlX+110, owlY+110);
  //wings
  fill(77, 63, 47);
  pushMatrix();
  arc(owlX+90, owlY+140, 20, 70, PI+HALF_PI, TWO_PI+HALF_PI, CHORD);
  arc(owlX+90, owlY+140, 20, 70, HALF_PI, PI+HALF_PI, CHORD);
  popMatrix();
  pushMatrix();
  arc(owlX+160, owlY+140, 20, 70, PI+HALF_PI, TWO_PI+HALF_PI, CHORD);
  arc(owlX+160, owlY+140, 20, 70, HALF_PI, PI+HALF_PI, CHORD);
  popMatrix();
  //eyes
  fill(102, 88, 72);
  ellipse(owlX+100, owlY+100, 60, 60);
  ellipse(owlX+150, owlY+100, 60, 60);
  fill(255);
  ellipse(owlX+100, owlY+100, 50, 50);
  ellipse(owlX+150, owlY+100, 50, 50);
  //pupil
  fill(0);
  ellipse(owlX+150, owlY+100, 25, 25);
  ellipse(owlX+100, owlY+100, 25, 25);
  fill(255);
  ellipse(owlX+108, owlY+92, 15, 15);
  ellipse(owlX+158, owlY+92, 15, 15);
  //legs
  fill(217, 169, 59);
  ellipse(owlX+135, owlY+180, 10, 15);
  ellipse(owlX+115, owlY+180, 10, 15);

  if (ratX==400 && ratAlive) {
    owlX+=5;
    owlY+=5;
    if (owlX==280) {
      ratAlive=false;
      delay(1000);
    }
  } else if (ratX!= 400 & ratAlive) {
    owlX-=0;
    owlY-=0;
  } else if (ratAlive == false && owlX==0) {
    ratAlive=true;
    ratX=1800;
  } else {
    owlX-=5;
    owlY-=5;
  }
}

void deciduous() {
  noStroke();
  decBackground();
  if (ratAlive) {
    rat();
  }
  owl();
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=445 && mouseY<=475) {//if click right arrow, move to the right
    delay(200);
    isInside5=false;
    isInside6=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=445 && mouseY<=475) {//if click left arrow, move to the left
    delay(200);
    isInside5=false;
    isInside4=true;
    info=false;
  }
}

void deepSea() {
  noStroke();
  background(7, 6, 36);
  lanternfish();
  lanternX+=lanternC;//moves the lanternfish right
  anglerFish();
  if (lanternX==300) {//stops the lanternfish infront of the angler
    lanternTrans= 255;
    lanternC=0;
    anglerX-=anglerC;//moves the angler to the lanternfish
    if (anglerX<=440) {//stops the angler and then erases the lanternfish
      background(7, 6, 36);
      anglerFish();
      if (anglerX==-200) {//when the angler moves off screen the variable values reset to its original position
        anglerC=4;
        anglerX=700;
        lanternX=-200;
        lanternC=2;
        lanternTrans=0;//resets the anglerfishes transparency
      }
    }
  }
  info();
  noStroke();
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=445 && mouseY<=475) {//if click left arrow, move to the left
    delay(200);
    isInside8=false;
    isInside7=true;
    info=false;
  }
}

void anglerFish() {

  //main body
  noStroke();
  fill(201, 146, 36, lanternTrans);
  arc(anglerX, fishY, 200, 200, -HALF_PI, PI);

  //teeth
  fill(255, lanternTrans);
  triangle(anglerX-100, fishY, anglerX-80, fishY, anglerX-90, fishY-60);
  triangle(anglerX-75, fishY, anglerX-65, fishY, anglerX-70, fishY-20);
  triangle(anglerX-50, fishY, anglerX-40, fishY, anglerX-45, fishY-40);
  triangle(anglerX-35, fishY, anglerX-15, fishY, anglerX-25, fishY-30);
  triangle(anglerX-10, fishY, anglerX-0, fishY, anglerX-5, fishY-20);

  //sideways teeth
  triangle(anglerX, fishY-100, anglerX, fishY-80, anglerX-60, fishY-90);
  triangle(anglerX, fishY-75, anglerX, fishY-65, anglerX-50, fishY-70);
  triangle(anglerX, fishY-50, anglerX, fishY-40, anglerX-40, fishY-45);

  //antenna
  noFill();
  stroke(201, 146, 36, lanternTrans);
  strokeWeight(15);
  arc(anglerX-50, fishY-80, 200, 150, PI, TWO_PI);
  strokeWeight(30);
  stroke(53, 190, 232);
  point(anglerX-150, fishY-80);

  //eye
  stroke(0, lanternTrans);
  point(anglerX+25, fishY-50);

  //tail
  noStroke();
  fill(201, 146, 36, lanternTrans);
  arc(anglerX+140, fishY, 150, 100, HALF_PI, PI+HALF_PI);
  stroke(125, 89, 17, lanternTrans);
  strokeWeight(10);
  line(anglerX+100, fishY+20, anglerX+130, fishY+20);
  line(anglerX+100, fishY, anglerX+125, fishY);
  line(anglerX+100, fishY-20, anglerX+130, fishY-20);
}

void lanternfish() {

  //body
  noStroke();
  fill(25, 71, 99);
  ellipse(lanternX+200, fishY-20, 100, 50);

  //mouth
  fill(7, 6, 36);
  triangle(lanternX+300, fishY-20, lanternX+230, fishY-15, lanternX+250, fishY);

  //eye
  fill(255);
  ellipse(lanternX+220, fishY-25, 17, 17);
  fill(0);
  ellipse(lanternX+220, fishY-25, 10, 10);

  //fins
  fill(25, 71, 99);
  triangle(lanternX+200, fishY-35, lanternX+200, fishY-65, lanternX+225, fishY-35);
  triangle(lanternX+220, fishY, lanternX+205, fishY, lanternX+210, fishY+10);

  //tail
  arc(lanternX+150, fishY-20, 20, 20, -HALF_PI, HALF_PI);
  stroke(13, 163, 255);
  line(lanternX+200, fishY-20, lanternX+170, fishY-20);
}

void desert() {
  noStroke();
  desertBackground();
  camel();
  camelX-=2;//moves the camel left
  if (camelX==-100)//teleports the camel back
    camelX=900;
  addax();
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=445 && mouseY<=475) {//if click right arrow, move to the right
    delay(200);
    isInside4=false;
    isInside5=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=445 && mouseY<=475) {//if click left arrow, move to the left
    delay(200);
    isInside4=false;
    isInside3=true;
    info=false;
  }
}

void desertBackground() {
  background(242, 209, 160);
  //water
  fill(67, 184, 217);
  ellipse(200, 430, 80, 40);
  //cactus #1
  pushMatrix();
  translate(-300, 20);
  //cactus
  fill(23, 153, 68);
  ellipse(400, 250, 40, 100);
  //cactus arms
  rect(350, 220, 40, 15, 25);
  rect(350, 220, 15, 40, 25); 
  rect(410, 220, 40, 15, 25);
  rect(435, 190, 15, 40, 25); 
  //cactus flower
  fill(237, 52, 160);
  ellipse(400, 200, 20, 20);
  //sand under cactus
  fill(242, 209, 160);
  rect(375, 280, 50, 50);
  popMatrix();
  //cactus #2
  pushMatrix();
  translate(-50, -150);
  //cactus
  fill(23, 153, 68);
  ellipse(400, 250, 40, 100);
  //cactus arms
  rect(350, 220, 40, 15, 25);
  rect(350, 220, 15, 40, 25); 
  rect(410, 220, 40, 15, 25);
  rect(435, 190, 15, 40, 25); 
  //cactus flower
  fill(237, 52, 160);
  ellipse(400, 200, 20, 20);
  //sand under cactus
  fill(242, 209, 160);
  rect(375, 280, 50, 50);
  popMatrix();
  //cactus #3
  pushMatrix();
  translate(150, 150);
  //cactus
  fill(23, 153, 68);
  ellipse(400, 250, 40, 100);
  //cactus arms
  rect(350, 220, 40, 15, 25);
  rect(350, 220, 15, 40, 25); 
  rect(410, 220, 40, 15, 25);
  rect(435, 190, 15, 40, 25); 
  //cactus flower
  fill(237, 52, 160);
  ellipse(400, 200, 20, 20);
  //sand under cactus
  fill(242, 209, 160);
  rect(375, 280, 50, 50);
  popMatrix();
}

void addax() {
  noStroke();
  fill(235, 228, 197);
  //legs
  //back leg
  pushMatrix();
  translate(addaxX+100, addaxY+100);
  rotate(-QUARTER_PI);
  rect(0, 0, 20, 40, 25);
  popMatrix();
  rect(addaxX+120, addaxY+110, 20, 40, 25);
  //back hoof
  fill(0);
  rect(addaxX+120, addaxY+140, 20, 10, 25);
  //front leg
  fill(235, 228, 197);
  rect(addaxX+10, addaxY+90, 20, 60, 25);
  //front hoof
  fill(0);
  rect(addaxX+10, addaxY+140, 20, 10, 25);
  //body
  fill(235, 228, 197);
  rect(addaxX, addaxY, 150, 100, 25);
  //neck
  pushMatrix();
  translate(addaxX, addaxY+45);
  rotate(-QUARTER_PI);
  ellipse(0, 0, 150, 50);
  popMatrix();
  //horn behind head
  pushMatrix();
  translate(-20, 0);
  noFill();
  stroke(176, 168, 135);
  strokeWeight(5);
  arc(addaxX-40, addaxY+75, 20, 30, PI+HALF_PI, TWO_PI+HALF_PI);
  arc(addaxX-40, addaxY+45, 20, 30, HALF_PI, PI+HALF_PI);
  popMatrix();
  //head
  fill(235, 228, 197);
  noStroke();
  ellipse(addaxX-40, addaxY+95, 45, 65);
  fill(191, 142, 63);
  arc(addaxX-40, addaxY+95, 45, 65, PI+QUARTER_PI, PI+HALF_PI);
  //horns
  noFill();
  stroke(176, 168, 135);
  strokeWeight(5);
  arc(addaxX-40, addaxY+75, 20, 30, PI+HALF_PI, TWO_PI+HALF_PI);
  arc(addaxX-40, addaxY+45, 20, 30, HALF_PI, PI+HALF_PI);
  //eye
  stroke(0);
  point(addaxX-45, addaxY+105);
}

void camel() {
  //camel
  //hump
  fill(219, 166, 105);
  ellipse(camelX, camelY-30, 60, 60);
  //tails
  stroke(232, 169, 97);
  strokeWeight(5);
  noFill();
  arc(camelX+60, camelY+15, 50, 50, PI, TWO_PI);
  noStroke();
  fill(122, 88, 49);
  ellipse(camelX+85, camelY+15, 10, 20);
  //body
  noStroke();
  fill(232, 169, 97);
  ellipse(camelX, camelY, 130, 90);
  //feet
  fill(252, 191, 121);
  rect(camelX-55, camelY+90, 30, 10, 25);
  rect(camelX+5, camelY+90, 30, 10, 25);
  //lower legs
  fill(252, 191, 121);
  rect(camelX-35, camelY+50, 10, 50, 25);
  rect(camelX+25, camelY+50, 10, 50, 25);
  //legs
  fill(232, 169, 97);
  rect(camelX-40, camelY+30, 20, 50, 25);
  rect(camelX+20, camelY+30, 20, 50, 25);
  //neck
  ellipse(camelX-60, camelY, 70, 50);
  rect(camelX-95, camelY-70, 40, 80, 25);
  //head
  ellipse(camelX-90, camelY-60, 70, 30);
  fill(0);
  ellipse(camelX-80, camelY-60, 10, 10);
  //nose
  fill(181, 136, 85);
  ellipse(camelX-110, camelY-65, 8, 5);
  //mouth
  stroke(0);
  strokeWeight(1);
  line(camelX-125, camelY-58, camelX-115, camelY-58);
}

void prairie() {
  noStroke();
  prairieBackground();
  coyote();
  prairieDog();
  coyoteX+=5;
  if (coyoteX==1200) {//detects if the coyote is far enough off the screen
    coyoteX=-300;//teleports it back to the other side
  }
  if (coyoteX==100) {//detects if the coyote is close to the prairie dog
    coyoteClose=true;//changes the boolean value
  }
  if (coyoteClose && prairieY!=350) {//if the coyote is close and the prairie dog hasn't finished hiding
    prairieY+=4;//prairie dog goes under
  }
  if (coyoteClose==false && prairieY!=230) {//if the coyote is not close anymore and the prairie dog isn't fully up
    prairieY-=4;//prairie dog goes back up
  }
  if (coyoteX==550) {//if the coyote goes past the prairie dog
    coyoteClose=false;//changes the boolean value
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=445 && mouseY<=475) {//if click right arrow, move to the right
    delay(200);
    isInside7=false;
    isInside8=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=445 && mouseY<=475) {//if click left arrow, move to the left
    delay(200);
    isInside7=false;
    isInside6=true;
    info=false;
  }
}

void prairieBackground() {
  background(#9DCFD8);//sky
  fill(#F5D848);
  ellipse(600, 100, 100, 100);//sun
}

void coyote() {
  fill(#6C5838);
  beginShape();//outline of coyote
  vertex(coyoteX+191, coyoteY+96);
  vertex(coyoteX+217, coyoteY+58);
  vertex(coyoteX+232, coyoteY+48);
  vertex(coyoteX+241, coyoteY+37);
  vertex(coyoteX+244, coyoteY+43);
  vertex(coyoteX+251, coyoteY+35);
  vertex(coyoteX+253, coyoteY+55);
  vertex(coyoteX+263, coyoteY+61);
  vertex(coyoteX+268, coyoteY+73);
  vertex(coyoteX+293, coyoteY+81);
  vertex(coyoteX+288, coyoteY+97);
  vertex(coyoteX+261, coyoteY+98);
  vertex(coyoteX+256, coyoteY+116);
  vertex(coyoteX+228, coyoteY+163);
  vertex(coyoteX+208, coyoteY+179);
  vertex(coyoteX+202, coyoteY+244);
  vertex(coyoteX+212, coyoteY+249);
  vertex(coyoteX+218, coyoteY+259);
  vertex(coyoteX+191, coyoteY+260);
  vertex(coyoteX+179, coyoteY+239);
  vertex(coyoteX+174, coyoteY+177);
  vertex(coyoteX+141, coyoteY+174);
  vertex(coyoteX+115, coyoteY+162);
  vertex(coyoteX+93, coyoteY+191);
  vertex(coyoteX+70, coyoteY+213);
  vertex(coyoteX+78, coyoteY+245);
  vertex(coyoteX+88, coyoteY+251);
  vertex(coyoteX+96, coyoteY+256);
  vertex(coyoteX+86, coyoteY+263);
  vertex(coyoteX+67, coyoteY+257);
  vertex(coyoteX+60, coyoteY+248);
  vertex(coyoteX+55, coyoteY+248);
  vertex(coyoteX+43, coyoteY+202);
  vertex(coyoteX+57, coyoteY+159);
  vertex(coyoteX+48, coyoteY+143);
  vertex(coyoteX+49, coyoteY+125);
  vertex(coyoteX+44, coyoteY+175);
  vertex(coyoteX+33, coyoteY+190);
  vertex(coyoteX+21, coyoteY+207);
  vertex(coyoteX+7, coyoteY+218);
  vertex(coyoteX+5, coyoteY+177);
  vertex(coyoteX+23, coyoteY+131);
  vertex(coyoteX+49, coyoteY+101);
  vertex(coyoteX+93, coyoteY+91);
  vertex(coyoteX+145, coyoteY+98);
  endShape(CLOSE);
  fill(0);
  beginShape();//eye
  vertex(coyoteX+266, coyoteY+68);
  vertex(coyoteX+260, coyoteY+73);
  vertex(coyoteX+269, coyoteY+73);
  endShape();
  beginShape();//nose
  vertex(coyoteX+284, coyoteY+78);
  vertex(coyoteX+293, coyoteY+80);
  vertex(coyoteX+291, coyoteY+87);
  endShape();
}

void prairieDog() {
  fill(#FAD9A4);
  //head
  ellipse(prairieX+495, prairieY+100, 60, 50);
  //body
  ellipse(prairieX+498, prairieY+150, 55, 100);
  rectMode(CENTER);
  rect(prairieX+500, prairieY+150, 50, 100);
  //ear
  ellipse(prairieX+515, prairieY+80, 15, 15);
  //feet
  ellipse(prairieX+520, prairieY+200, 15, 20);
  ellipse(prairieX+480, prairieY+200, 15, 20);
  //tail
  rect(prairieX+530, prairieY+180, 70, 15, 100);
  rectMode(CORNER);
  fill(#6C4F20);
  //tip of tail
  arc(prairieX+560, prairieY+180, 15, 15, PI+HALF_PI, TWO_PI+HALF_PI);
  fill(0);
  //eye
  ellipse(prairieX+495, prairieY+95, 10, 10);
  //belly
  fill(#FFEAC9);
  ellipse(prairieX+487, prairieY+150, 25, 60);
  //nose
  fill(#5F410F);
  ellipse(prairieX+474, prairieY+100, 6, 6);
  strokeWeight(1);
  stroke(1);
  //mouth
  line(prairieX+473, prairieY+103, prairieX+473, prairieY+108);
  line(prairieX+470, prairieY+108, prairieX+476, prairieY+108);
  noStroke();
  //grass
  fill(#316F35);
  rect(0, 450, 800, 50);//the grass is in the prairie dog method because the prairie dog needs to hide behind the grass
  //mound
  fill(#6C543C);
  arc(prairieX+500, 480, 200, 100, PI+(QUARTER_PI/4), TWO_PI-(QUARTER_PI/4), OPEN);
}

void savanna() {
  savBackground();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=445 && mouseY<=475) {//if click right arrow, move to the right
    delay(200);
    isInside2=false;
    isInside3=true;
    info=false;
  }
  if (mousePressed && mouseX>=30 && mouseX<=100 && mouseY>=445 && mouseY<=475) {//if click left arrow, move to the left
    delay(200);
    isInside2=false;
    isInside1=true;
    info=false;
  }
  elephant();
  lion();
  info();

  //moves elephant and lion depending on lionC and elephantC
  elephantX-=elephantC;
  lionX-=lionC;

  //once the elephant reaches a certain point the lion will move onto the screen and elephant will move faster
  if (elephantX==250) {
    lionC=6;
    elephantC=7;
  }

  //teleports the elephant back and resets the speed
  if (elephantX<=-500) {
    elephantX=1000;
    elephantC=2;
  }

  //teleports the lion back
  if (lionX<=-300) {
    lionX=800;
    lionC=0;
  }
}


void savBackground() {
  for (int i = 0; i <= 400; i++) {
    stroke(lerpColor(color(#F2E7A4), color(#EDA837), map(i, 0, height, 0, 1)));
    line(0, i, width, i);
  }
  fill(#9FAF58);
  noStroke();
  rect(0, 400, 800, 100);
  fill(#4D4022);
  pushMatrix();
  translate(110, -30);
  rect(550, 300, 30, 150, 100);
  rect(550, 420, 30, 30);
  quad(560, 320, 580, 310, 450, 250, 440, 250);
  quad(550, 310, 580, 310, 650, 250, 630, 250);
  quad(510, 290, 525, 295, 570, 250, 560, 250);
  fill(#538E1D);
  ellipse(500, 250, 200, 30);
  ellipse(600, 245, 160, 35);
  ellipse(540, 250, 100, 35);
  popMatrix();

  pushMatrix();
  scale(0.8);
  translate(120, 80);
  fill(#4D4022);
  rect(550, 300, 30, 150, 100);
  rect(550, 420, 30, 30);
  quad(560, 320, 580, 310, 450, 250, 440, 250);
  quad(550, 310, 580, 310, 650, 250, 630, 250);
  quad(510, 290, 525, 295, 570, 250, 560, 250);
  fill(#538E1D);
  ellipse(500, 250, 200, 30);
  ellipse(600, 245, 160, 35);
  ellipse(540, 250, 100, 35);
  popMatrix();
}


void elephant() {
  pushMatrix();
  translate(300, 0);
  //body
  fill(141, 145, 145);
  noStroke();
  ellipse(elephantX, elephantY, 250, 180);
  //tail
  stroke(0);
  line(elephantX+120, elephantY, elephantX+150, elephantY);
  noStroke();
  fill(141, 145, 145);
  ellipse(elephantX+150, elephantY, 20, 10);
  //hind leg
  rect(elephantX+30, elephantY+50, 40, 100, 25);  
  //toes
  fill(189, 189, 189);
  ellipse(elephantX+40, elephantY+135, 10, 20);
  ellipse(elephantX+50, elephantY+135, 10, 20);
  ellipse(elephantX+60, elephantY+135, 10, 20);
  //front leg
  pushMatrix();
  translate(-100, 0);
  fill(141, 145, 145);
  rect(elephantX+30, elephantY+50, 40, 100, 25);
  //toes
  fill(189, 189, 189);
  ellipse(elephantX+40, elephantY+135, 10, 20);
  ellipse(elephantX+50, elephantY+135, 10, 20);
  ellipse(elephantX+60, elephantY+135, 10, 20);
  popMatrix();
  //head
  fill(141, 145, 145);
  ellipse(elephantX-130, elephantY-20, 120, 100);
  //trunk
  stroke(141, 145, 145);
  noFill();
  strokeWeight(20);
  arc(elephantX-200, elephantY-20, 100, 100, 0, HALF_PI+QUARTER_PI);
  //tusk
  stroke(255);
  triangle(elephantX-170, elephantY+20, elephantX-173, elephantY+20, elephantX-190, elephantY+40);
  //ear
  stroke(0);
  strokeWeight(5);
  fill(141, 145, 145);
  arc(elephantX-100, elephantY-20, 80, 90, PI+HALF_PI, TWO_PI+HALF_PI+QUARTER_PI);
  //eye
  stroke(0);
  strokeWeight(15);
  point(elephantX-130, elephantY-40);
  strokeWeight(2);
  noFill();
  arc(elephantX-130, elephantY-40, 20, 20, PI+HALF_PI, PI+HALF_PI+QUARTER_PI);
  popMatrix();
}

void lion() {
  noStroke();
  //body
  fill(#D3BD4F);
  beginShape();
  vertex(lionX+123, lionY+115);
  vertex(lionX+159, lionY+107);
  vertex(lionX+182, lionY+112);
  vertex(lionX+199, lionY+112);
  vertex(lionX+217, lionY+110);
  vertex(lionX+251, lionY+104);
  vertex(lionX+268, lionY+111);
  vertex(lionX+280, lionY+125);
  vertex(lionX+283, lionY+145);
  vertex(lionX+284, lionY+166);
  vertex(lionX+298, lionY+182);
  vertex(lionX+305, lionY+190);
  vertex(lionX+305, lionY+201);
  vertex(lionX+307, lionY+225);
  vertex(lionX+300, lionY+227);
  vertex(lionX+285, lionY+227);
  vertex(lionX+283, lionY+221);
  vertex(lionX+286, lionY+217);
  vertex(lionX+298, lionY+217);
  vertex(lionX+296, lionY+211);
  vertex(lionX+292, lionY+200);
  vertex(lionX+256, lionY+177);
  vertex(lionX+255, lionY+187);
  vertex(lionX+258, lionY+196);
  vertex(lionX+253, lionY+206);
  vertex(lionX+243, lionY+215);
  vertex(lionX+240, lionY+221);
  vertex(lionX+227, lionY+224);
  vertex(lionX+215, lionY+223);
  vertex(lionX+214, lionY+215);
  vertex(lionX+218, lionY+213);
  vertex(lionX+229, lionY+214);
  vertex(lionX+237, lionY+201);
  vertex(lionX+239, lionY+188);
  vertex(lionX+230, lionY+174);
  vertex(lionX+229, lionY+170);
  vertex(lionX+229, lionY+164);
  vertex(lionX+227, lionY+164);
  vertex(lionX+208, lionY+176);
  vertex(lionX+199, lionY+180);
  vertex(lionX+187, lionY+179);
  vertex(lionX+175, lionY+178);
  vertex(lionX+172, lionY+184);
  vertex(lionX+168, lionY+196);
  vertex(lionX+166, lionY+207);
  vertex(lionX+165, lionY+233);
  vertex(lionX+162, lionY+236);
  vertex(lionX+137, lionY+237);
  vertex(lionX+134, lionY+234);
  vertex(lionX+133, lionY+231);
  vertex(lionX+137, lionY+226);
  vertex(lionX+148, lionY+227);
  vertex(lionX+147, lionY+203);
  vertex(lionX+142, lionY+194);
  vertex(lionX+141, lionY+222);
  vertex(lionX+138, lionY+228);
  vertex(lionX+124, lionY+230);
  vertex(lionX+113, lionY+229);
  vertex(lionX+109, lionY+224);
  vertex(lionX+123, lionY+222);
  vertex(lionX+124, lionY+205);
  vertex(lionX+118, lionY+169);
  endShape();
  //tail
  noFill();
  stroke(#D3BD4F);
  strokeWeight(7);
  arc(lionX+260, lionY+90, 30, 50, PI+HALF_PI, TWO_PI+HALF_PI);
  noStroke();
  fill(#A5763C);
  ellipse(lionX+260, lionY+65, 12, 10);
  //mane
  fill(#EDA230);
  ellipse(lionX+120, lionY+120, 90, 95);
  //head
  fill(#D3BD4F);
  ellipse(lionX+120, lionY+120, 60, 60);
  //ears
  ellipse(lionX+136, lionY+95, 15, 15);
  ellipse(lionX+104, lionY+95, 15, 15);
  //eyes
  fill(0);
  ellipse(lionX+130, lionY+110, 8, 8);
  ellipse(lionX+110, lionY+110, 8, 8);
  //nose
  fill(#A5763C);
  triangle(lionX+120, lionY+120, lionX+125, lionY+127, lionX+115, lionY+127);
  //mouth
  stroke(0);
  strokeWeight(1);
  line(lionX+120, lionY+127, lionX+120, lionY+130);
  line(lionX+125, lionY+132, lionX+120, lionY+130);
  line(lionX+115, lionY+132, lionX+120, lionY+130);
  noStroke();
}

void tropBackground() {
  background(31, 63, 48);
  //background trees
  fill(42, 79, 62);
  rect(100, 0, 20, 500);
  quad(200, 0, 250, 0, 300, 500, 250, 500);
  quad(470, 0, 440, 0, 420, 500, 450, 500);
  quad(600, 0, 650, 0, 700, 500, 650, 500);
  //leaves
  fill(74, 183, 76); 
  pushMatrix();
  rotate(radians(-20));
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(19, 129, 67);
  pushMatrix();
  rotate(radians(40));
  translate(50, -120);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  pushMatrix();
  scale(1.5);
  translate(70, 0);
  rotate(radians(-20));
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(74, 183, 76);
  pushMatrix();
  scale(1.3);
  rotate(radians(40));
  translate(90, -160);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  pushMatrix();
  rotate(radians(40));
  translate(320, -340);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  fill(19, 129, 67);
  pushMatrix();
  rotate(radians(-20));
  translate(500, 180);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  pushMatrix();
  rotate(radians(-20));
  translate(330, 120);
  arc(72, 72, 100, 100, PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  arc(72, 0, 100, 100, QUARTER_PI, HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  //ground
  fill(74, 183, 76);
  ellipse(150, 450, 600, 150);
  ellipse(580, 450, 600, 150);
}

void panther() { //method used for the panther moving to the left
  pushMatrix();
  scale(0.5);
  pantherX-=pantherXC;
  pantherY = 400;
  if (pantherX<=200) {//detects if panther has reached close enough to the snake
    close=true; //changes boolean value, used later
    pantherXC*=-4; //changes the speed and direction that the panther moves
  }
  //panther
  fill(31, 28, 24);
  beginShape();
  vertex(pantherX+49, pantherY+148);
  vertex(pantherX+55, pantherY+148);
  vertex(pantherX+63, pantherY+153);
  vertex(pantherX+84, pantherY+154);
  vertex(pantherX+112, pantherY+155);
  vertex(pantherX+122, pantherY+151);
  vertex(pantherX+128, pantherY+145);
  vertex(pantherX+134, pantherY+145);
  vertex(pantherX+140, pantherY+148);
  vertex(pantherX+140, pantherY+164);
  vertex(pantherX+180, pantherY+166);
  vertex(pantherX+188, pantherY+164);
  vertex(pantherX+195, pantherY+167);
  vertex(pantherX+273, pantherY+180);
  vertex(pantherX+317, pantherY+170);
  vertex(pantherX+343, pantherY+164);
  vertex(pantherX+396, pantherY+162);
  vertex(pantherX+437, pantherY+163);
  vertex(pantherX+466, pantherY+169);
  vertex(pantherX+548, pantherY+196);
  vertex(pantherX+583, pantherY+203);
  vertex(pantherX+629, pantherY+202);
  vertex(pantherX+648, pantherY+198);
  vertex(pantherX+666, pantherY+193);
  vertex(pantherX+678, pantherY+192);
  vertex(pantherX+688, pantherY+187);
  vertex(pantherX+699, pantherY+181);
  vertex(pantherX+709, pantherY+177);
  vertex(pantherX+720, pantherY+170);
  vertex(pantherX+729, pantherY+162);
  vertex(pantherX+738, pantherY+154);
  vertex(pantherX+747, pantherY+144);
  vertex(pantherX+755, pantherY+133);
  vertex(pantherX+760, pantherY+120);
  vertex(pantherX+763, pantherY+108);
  vertex(pantherX+764, pantherY+92);
  vertex(pantherX+759, pantherY+74);
  vertex(pantherX+750, pantherY+71);
  vertex(pantherX+749, pantherY+62);
  vertex(pantherX+755, pantherY+53);
  vertex(pantherX+768, pantherY+53);
  vertex(pantherX+775, pantherY+60);
  vertex(pantherX+782, pantherY+80);
  vertex(pantherX+783, pantherY+93);
  vertex(pantherX+782, pantherY+108);
  vertex(pantherX+778, pantherY+125);
  vertex(pantherX+774, pantherY+133);
  vertex(pantherX+769, pantherY+142);
  vertex(pantherX+765, pantherY+148);
  vertex(pantherX+762, pantherY+154);
  vertex(pantherX+757, pantherY+162);
  vertex(pantherX+753, pantherY+167);
  vertex(pantherX+744, pantherY+173);
  vertex(pantherX+739, pantherY+178);
  vertex(pantherX+730, pantherY+184);
  vertex(pantherX+724, pantherY+192);
  vertex(pantherX+714, pantherY+196);
  vertex(pantherX+707, pantherY+200);
  vertex(pantherX+699, pantherY+204);
  vertex(pantherX+688, pantherY+208);
  vertex(pantherX+678, pantherY+215);
  vertex(pantherX+669, pantherY+218);
  vertex(pantherX+640, pantherY+224);
  vertex(pantherX+625, pantherY+226);
  vertex(pantherX+574, pantherY+228);
  vertex(pantherX+549, pantherY+228);
  vertex(pantherX+538, pantherY+232);
  vertex(pantherX+558, pantherY+293);
  vertex(pantherX+585, pantherY+353);
  vertex(pantherX+598, pantherY+366);
  vertex(pantherX+610, pantherY+366);
  vertex(pantherX+617, pantherY+372);
  vertex(pantherX+635, pantherY+429);
  vertex(pantherX+646, pantherY+452);
  vertex(pantherX+645, pantherY+459);
  vertex(pantherX+625, pantherY+470);
  vertex(pantherX+617, pantherY+474);
  vertex(pantherX+602, pantherY+472);
  vertex(pantherX+601, pantherY+454);
  vertex(pantherX+616, pantherY+452);
  vertex(pantherX+619, pantherY+447);
  vertex(pantherX+618, pantherY+440);
  vertex(pantherX+600, pantherY+411);
  vertex(pantherX+595, pantherY+403);
  vertex(pantherX+585, pantherY+397);
  vertex(pantherX+521, pantherY+373);
  vertex(pantherX+499, pantherY+358);
  vertex(pantherX+491, pantherY+351);
  vertex(pantherX+488, pantherY+345);
  vertex(pantherX+480, pantherY+310);
  vertex(pantherX+467, pantherY+330);
  vertex(pantherX+467, pantherY+359);
  vertex(pantherX+481, pantherY+393);
  vertex(pantherX+480, pantherY+406);
  vertex(pantherX+443, pantherY+455);
  vertex(pantherX+435, pantherY+461);
  vertex(pantherX+395, pantherY+465);
  vertex(pantherX+386, pantherY+459);
  vertex(pantherX+384, pantherY+454);
  vertex(pantherX+389, pantherY+446);
  vertex(pantherX+400, pantherY+440);
  vertex(pantherX+406, pantherY+441);
  vertex(pantherX+418, pantherY+443);
  vertex(pantherX+439, pantherY+416);
  vertex(pantherX+442, pantherY+410);
  vertex(pantherX+416, pantherY+369);
  vertex(pantherX+404, pantherY+347);
  vertex(pantherX+395, pantherY+316);
  vertex(pantherX+393, pantherY+308);
  vertex(pantherX+394, pantherY+276);
  vertex(pantherX+379, pantherY+284);
  vertex(pantherX+365, pantherY+291);
  vertex(pantherX+343, pantherY+308);
  vertex(pantherX+294, pantherY+318);
  vertex(pantherX+266, pantherY+330);
  vertex(pantherX+252, pantherY+331);
  vertex(pantherX+253, pantherY+350);
  vertex(pantherX+251, pantherY+437);
  vertex(pantherX+247, pantherY+459);
  vertex(pantherX+232, pantherY+466);
  vertex(pantherX+199, pantherY+474);
  vertex(pantherX+187, pantherY+477);
  vertex(pantherX+181, pantherY+476);
  vertex(pantherX+180, pantherY+471);
  vertex(pantherX+177, pantherY+470);
  vertex(pantherX+173, pantherY+461);
  vertex(pantherX+176, pantherY+452);
  vertex(pantherX+188, pantherY+440);
  vertex(pantherX+219, pantherY+443);
  vertex(pantherX+224, pantherY+433);
  vertex(pantherX+220, pantherY+407);
  vertex(pantherX+206, pantherY+372);
  vertex(pantherX+204, pantherY+351);
  vertex(pantherX+199, pantherY+351);
  vertex(pantherX+182, pantherY+371);
  vertex(pantherX+155, pantherY+397);
  vertex(pantherX+129, pantherY+412);
  vertex(pantherX+123, pantherY+423);
  vertex(pantherX+117, pantherY+430);
  vertex(pantherX+106, pantherY+445);
  vertex(pantherX+94, pantherY+456);
  vertex(pantherX+74, pantherY+467);
  vertex(pantherX+60, pantherY+467);
  vertex(pantherX+52, pantherY+460);
  vertex(pantherX+52, pantherY+439);
  vertex(pantherX+65, pantherY+427);
  vertex(pantherX+83, pantherY+412);
  vertex(pantherX+104, pantherY+385);
  vertex(pantherX+118, pantherY+363);
  vertex(pantherX+137, pantherY+341);
  vertex(pantherX+137, pantherY+331);
  vertex(pantherX+128, pantherY+303);
  vertex(pantherX+128, pantherY+281);
  vertex(pantherX+116, pantherY+265);
  vertex(pantherX+100, pantherY+253);
  vertex(pantherX+92, pantherY+258);
  vertex(pantherX+73, pantherY+260);
  vertex(pantherX+59, pantherY+248);
  vertex(pantherX+56, pantherY+218);
  vertex(pantherX+49, pantherY+212);
  vertex(pantherX+48, pantherY+200);
  vertex(pantherX+48, pantherY+189);
  vertex(pantherX+52, pantherY+176);
  vertex(pantherX+45, pantherY+157);
  vertex(pantherX+47, pantherY+148);
  vertex(pantherX+55, pantherY+147);
  endShape();
  //eyes
  fill(209, 206, 119);
  ellipse(pantherX+70, pantherY+195, 13, 9);
  ellipse(pantherX+105, pantherY+195, 15, 10);
  popMatrix();
}
void panther2() { //function used for panther moving to the right
  pushMatrix();
  scale(0.5);
  pantherX-=pantherXC;
  pantherY = 400; 
  if (pantherX>=2600) {//detects if the panther has gone far enough
    pantherXC*=-0.25;//changes the speed and direction of the panther
    close=false;//changes boolean value, used later
  }
  //panther
  fill(31, 28, 24);
  beginShape();
  vertex(pantherX+668, pantherY+146);
  vertex(pantherX+682, pantherY+161);
  vertex(pantherX+686, pantherY+156);
  vertex(pantherX+700, pantherY+153);
  vertex(pantherX+715, pantherY+155);
  vertex(pantherX+726, pantherY+160);
  vertex(pantherX+743, pantherY+149);
  vertex(pantherX+749, pantherY+147);
  vertex(pantherX+753, pantherY+155);
  vertex(pantherX+750, pantherY+169);
  vertex(pantherX+746, pantherY+177);
  vertex(pantherX+746, pantherY+185);
  vertex(pantherX+750, pantherY+189);
  vertex(pantherX+749, pantherY+211);
  vertex(pantherX+743, pantherY+220);
  vertex(pantherX+740, pantherY+248);
  vertex(pantherX+732, pantherY+257);
  vertex(pantherX+726, pantherY+257);
  vertex(pantherX+708, pantherY+257);
  vertex(pantherX+700, pantherY+251);
  vertex(pantherX+682, pantherY+264);
  vertex(pantherX+670, pantherY+281);
  vertex(pantherX+670, pantherY+302);
  vertex(pantherX+662, pantherY+328);
  vertex(pantherX+662, pantherY+342);
  vertex(pantherX+716, pantherY+413);
  vertex(pantherX+746, pantherY+440);
  vertex(pantherX+747, pantherY+453);
  vertex(pantherX+746, pantherY+461);
  vertex(pantherX+738, pantherY+468);
  vertex(pantherX+725, pantherY+467);
  vertex(pantherX+706, pantherY+455);
  vertex(pantherX+692, pantherY+443);
  vertex(pantherX+692, pantherY+436);
  vertex(pantherX+683, pantherY+431);
  vertex(pantherX+677, pantherY+422);
  vertex(pantherX+671, pantherY+412);
  vertex(pantherX+647, pantherY+398);
  vertex(pantherX+617, pantherY+372);
  vertex(pantherX+601, pantherY+352);
  vertex(pantherX+594, pantherY+351);
  vertex(pantherX+593, pantherY+371);
  vertex(pantherX+580, pantherY+406);
  vertex(pantherX+576, pantherY+430);
  vertex(pantherX+579, pantherY+443);
  vertex(pantherX+592, pantherY+446);
  vertex(pantherX+612, pantherY+439);
  vertex(pantherX+623, pantherY+450);
  vertex(pantherX+625, pantherY+462);
  vertex(pantherX+623, pantherY+468);
  vertex(pantherX+617, pantherY+474);
  vertex(pantherX+600, pantherY+474);
  vertex(pantherX+567, pantherY+468);
  vertex(pantherX+552, pantherY+459);
  vertex(pantherX+547, pantherY+437);
  vertex(pantherX+545, pantherY+367);
  vertex(pantherX+546, pantherY+346);
  vertex(pantherX+547, pantherY+330);
  vertex(pantherX+534, pantherY+330);
  vertex(pantherX+504, pantherY+316);
  vertex(pantherX+480, pantherY+315);
  vertex(pantherX+457, pantherY+306);
  vertex(pantherX+434, pantherY+291);
  vertex(pantherX+421, pantherY+284);
  vertex(pantherX+406, pantherY+277);
  vertex(pantherX+409, pantherY+291);
  vertex(pantherX+407, pantherY+307);
  vertex(pantherX+404, pantherY+315);
  vertex(pantherX+394, pantherY+347);
  vertex(pantherX+382, pantherY+370);
  vertex(pantherX+356, pantherY+407);
  vertex(pantherX+357, pantherY+415);
  vertex(pantherX+378, pantherY+443);
  vertex(pantherX+390, pantherY+441);
  vertex(pantherX+400, pantherY+441);
  vertex(pantherX+409, pantherY+446);
  vertex(pantherX+414, pantherY+453);
  vertex(pantherX+412, pantherY+459);
  vertex(pantherX+404, pantherY+467);
  vertex(pantherX+364, pantherY+462);
  vertex(pantherX+356, pantherY+456);
  vertex(pantherX+319, pantherY+404);
  vertex(pantherX+318, pantherY+392);
  vertex(pantherX+331, pantherY+361);
  vertex(pantherX+332, pantherY+330);
  vertex(pantherX+321, pantherY+311);
  vertex(pantherX+312, pantherY+343);
  vertex(pantherX+308, pantherY+352);
  vertex(pantherX+302, pantherY+360);
  vertex(pantherX+292, pantherY+364);
  vertex(pantherX+277, pantherY+373);
  vertex(pantherX+181, pantherY+445);
  vertex(pantherX+198, pantherY+472);
  vertex(pantherX+182, pantherY+475);
  vertex(pantherX+176, pantherY+473);
  vertex(pantherX+153, pantherY+459);
  vertex(pantherX+153, pantherY+452);
  vertex(pantherX+163, pantherY+429);
  vertex(pantherX+183, pantherY+371);
  vertex(pantherX+200, pantherY+366);
  vertex(pantherX+212, pantherY+354);
  vertex(pantherX+261, pantherY+231);
  vertex(pantherX+251, pantherY+228);
  vertex(pantherX+226, pantherY+227);
  vertex(pantherX+175, pantherY+228);
  vertex(pantherX+158, pantherY+225);
  vertex(pantherX+142, pantherY+220);
  vertex(pantherX+131, pantherY+220);
  vertex(pantherX+120, pantherY+215);
  vertex(pantherX+110, pantherY+209);
  vertex(pantherX+99, pantherY+206);
  vertex(pantherX+74, pantherY+191);
  vertex(pantherX+68, pantherY+186);
  vertex(pantherX+60, pantherY+180);
  vertex(pantherX+53, pantherY+174);
  vertex(pantherX+47, pantherY+169);
  vertex(pantherX+42, pantherY+164);
  vertex(pantherX+36, pantherY+154);
  vertex(pantherX+33, pantherY+150);
  vertex(pantherX+29, pantherY+143);
  vertex(pantherX+25, pantherY+134);
  vertex(pantherX+20, pantherY+128);
  vertex(pantherX+16, pantherY+108);
  vertex(pantherX+16, pantherY+82);
  vertex(pantherX+23, pantherY+62);
  vertex(pantherX+32, pantherY+55);
  vertex(pantherX+45, pantherY+53);
  vertex(pantherX+51, pantherY+63);
  vertex(pantherX+48, pantherY+72);
  vertex(pantherX+39, pantherY+74);
  vertex(pantherX+35, pantherY+93);
  vertex(pantherX+34, pantherY+108);
  vertex(pantherX+38, pantherY+121);
  vertex(pantherX+43, pantherY+132);
  vertex(pantherX+52, pantherY+144);
  vertex(pantherX+60, pantherY+153);
  vertex(pantherX+68, pantherY+162);
  vertex(pantherX+79, pantherY+169);
  vertex(pantherX+90, pantherY+176);
  vertex(pantherX+100, pantherY+182);
  vertex(pantherX+111, pantherY+186);
  vertex(pantherX+121, pantherY+192);
  vertex(pantherX+133, pantherY+194);
  vertex(pantherX+151, pantherY+198);
  vertex(pantherX+169, pantherY+201);
  vertex(pantherX+214, pantherY+201);
  vertex(pantherX+250, pantherY+195);
  vertex(pantherX+333, pantherY+170);
  vertex(pantherX+455, pantherY+164);
  vertex(pantherX+481, pantherY+169);
  vertex(pantherX+524, pantherY+179);
  vertex(pantherX+569, pantherY+179);
  vertex(pantherX+604, pantherY+168);
  vertex(pantherX+660, pantherY+158);
  vertex(pantherX+660, pantherY+148);
  endShape();
  //eyes
  fill(209, 206, 119);
  ellipse(pantherX+730, pantherY+195, 13, 9);
  ellipse(pantherX+695, pantherY+195, 15, 10);
  popMatrix();
}
void snake() {
  pushMatrix();
  scale(0.15);
  //snake outline
  fill(163, 142, 83);
  beginShape();
  vertex(snakeX+782, snakeY+47);
  vertex(snakeX+790, snakeY+58);
  vertex(snakeX+793, snakeY+66);
  vertex(snakeX+786, snakeY+78);
  vertex(snakeX+770, snakeY+94);
  vertex(snakeX+754, snakeY+100);
  vertex(snakeX+686, snakeY+111);
  vertex(snakeX+642, snakeY+114);
  vertex(snakeX+632, snakeY+119);
  vertex(snakeX+617, snakeY+149);
  vertex(snakeX+616, snakeY+159);
  vertex(snakeX+610, snakeY+198);
  vertex(snakeX+600, snakeY+255);
  vertex(snakeX+589, snakeY+317);
  vertex(snakeX+577, snakeY+341);
  vertex(snakeX+553, snakeY+379);
  vertex(snakeX+511, snakeY+420);
  vertex(snakeX+463, snakeY+439);
  vertex(snakeX+355, snakeY+446);
  vertex(snakeX+298, snakeY+430);
  vertex(snakeX+255, snakeY+398);
  vertex(snakeX+242, snakeY+337);
  vertex(snakeX+250, snakeY+308);
  vertex(snakeX+288, snakeY+253);
  vertex(snakeX+354, snakeY+214);
  vertex(snakeX+404, snakeY+201);
  vertex(snakeX+463, snakeY+193);
  vertex(snakeX+511, snakeY+192);
  vertex(snakeX+533, snakeY+192);
  vertex(snakeX+611, snakeY+198);
  vertex(snakeX+648, snakeY+206);
  vertex(snakeX+683, snakeY+219);
  vertex(snakeX+746, snakeY+258);
  vertex(snakeX+762, snakeY+275);
  vertex(snakeX+799, snakeY+364);
  vertex(snakeX+792, snakeY+409);
  vertex(snakeX+781, snakeY+437);
  vertex(snakeX+760, snakeY+467);
  vertex(snakeX+735, snakeY+490);
  vertex(snakeX+707, snakeY+509);
  vertex(snakeX+668, snakeY+528);
  vertex(snakeX+635, snakeY+544);
  vertex(snakeX+594, snakeY+553);
  vertex(snakeX+552, snakeY+562);
  vertex(snakeX+511, snakeY+567);
  vertex(snakeX+451, snakeY+575);
  vertex(snakeX+398, snakeY+573);
  vertex(snakeX+338, snakeY+572);
  vertex(snakeX+304, snakeY+570);
  vertex(snakeX+258, snakeY+564);
  vertex(snakeX+201, snakeY+553);
  vertex(snakeX+154, snakeY+540);
  vertex(snakeX+122, snakeY+528);
  vertex(snakeX+65, snakeY+493);
  vertex(snakeX+27, snakeY+452);
  vertex(snakeX+1, snakeY+368);
  vertex(snakeX+6, snakeY+329);
  vertex(snakeX+21, snakeY+297);
  vertex(snakeX+42, snakeY+273);
  vertex(snakeX+98, snakeY+233);
  vertex(snakeX+120, snakeY+223);
  vertex(snakeX+180, snakeY+205);
  vertex(snakeX+256, snakeY+184);
  vertex(snakeX+298, snakeY+145);
  vertex(snakeX+296, snakeY+132);
  vertex(snakeX+285, snakeY+120);
  vertex(snakeX+263, snakeY+110);
  vertex(snakeX+180, snakeY+98);
  vertex(snakeX+151, snakeY+95);
  vertex(snakeX+116, snakeY+86);
  vertex(snakeX+95, snakeY+77);
  vertex(snakeX+84, snakeY+65);
  vertex(snakeX+82, snakeY+56);
  vertex(snakeX+89, snakeY+55);
  vertex(snakeX+182, snakeY+74);
  vertex(snakeX+230, snakeY+74);
  vertex(snakeX+250, snakeY+75);
  vertex(snakeX+279, snakeY+78);
  vertex(snakeX+294, snakeY+82);
  vertex(snakeX+322, snakeY+95);
  vertex(snakeX+347, snakeY+155);
  vertex(snakeX+322, snakeY+201);
  vertex(snakeX+302, snakeY+221);
  vertex(snakeX+257, snakeY+239);
  vertex(snakeX+189, snakeY+267);
  vertex(snakeX+144, snakeY+286);
  vertex(snakeX+130, snakeY+294);
  vertex(snakeX+99, snakeY+341);
  vertex(snakeX+98, snakeY+359);
  vertex(snakeX+109, snakeY+385);
  vertex(snakeX+143, snakeY+411);
  vertex(snakeX+174, snakeY+426);
  vertex(snakeX+211, snakeY+436);
  vertex(snakeX+259, snakeY+445);
  vertex(snakeX+312, snakeY+452);
  vertex(snakeX+413, snakeY+455);
  vertex(snakeX+485, snakeY+447);
  vertex(snakeX+590, snakeY+426);
  vertex(snakeX+621, snakeY+413);
  vertex(snakeX+655, snakeY+377);
  vertex(snakeX+648, snakeY+350);
  vertex(snakeX+596, snakeY+315);
  vertex(snakeX+588, snakeY+315);
  vertex(snakeX+485, snakeY+305);
  vertex(snakeX+453, snakeY+307);
  vertex(snakeX+411, snakeY+316);
  vertex(snakeX+376, snakeY+329);
  vertex(snakeX+361, snakeY+341);
  vertex(snakeX+381, snakeY+342);
  vertex(snakeX+412, snakeY+342);
  vertex(snakeX+439, snakeY+335);
  vertex(snakeX+484, snakeY+305);
  vertex(snakeX+503, snakeY+280);
  vertex(snakeX+513, snakeY+251);
  vertex(snakeX+526, snakeY+220);
  vertex(snakeX+532, snakeY+193);
  vertex(snakeX+539, snakeY+160);
  vertex(snakeX+546, snakeY+129);
  vertex(snakeX+556, snakeY+107);
  vertex(snakeX+568, snakeY+79);
  vertex(snakeX+581, snakeY+64);
  vertex(snakeX+595, snakeY+50);
  vertex(snakeX+606, snakeY+38);
  vertex(snakeX+623, snakeY+27);
  vertex(snakeX+627, snakeY+17);
  vertex(snakeX+650, snakeY+1);
  vertex(snakeX+688, snakeY+1);
  vertex(snakeX+752, snakeY+25);
  vertex(snakeX+765, snakeY+39);
  endShape();
  popMatrix();
  //tongue
  stroke(184, 35, 35);
  strokeWeight(1);
  line(130, 370, 138, 370);
  line(138, 370, 140, 369);
  line(138, 370, 140, 371);
  noStroke();
  //eye
  fill(217, 200, 115);
  ellipse(120, 367, 3, 3);
}

void hummingbird() {
  hummingY+=hummingYC;
  hummingX+=4;
  if (hummingY==300 || hummingY==100) {//keeps changing the up-down direction of the bird
    hummingYC*=-1;
  }
  if (hummingX>=900) {//once bird reaches far enough, 
    hummingX=-800;
  }
  //tail
  fill(245, 5, 105);
  ellipse(hummingX+7, hummingY+30, 20, 20);

  //body
  noStroke();
  fill(217, 235, 160);
  arc(hummingX, hummingY, 40, 70, PI+HALF_PI, PI+PI+HALF_PI);
  fill(245, 5, 105);
  ellipse(hummingX+7, hummingY-10, 20, 20);
  fill(29, 184, 32);
  ellipse(hummingX, hummingY, 10, 70);

  //head
  fill(135, 219, 24);
  ellipse(hummingX+10, hummingY-25, 30, 30);
  stroke(102, 75, 5);
  strokeWeight(5);
  line(hummingX+25, hummingY-30, hummingX+40, hummingY-33);
  stroke(0);
  point(hummingX+15, hummingY-32);

  //wing
  noStroke();
  fill(12, 107, 24);
  ellipse(hummingX-20, hummingY-10, 40, 10);
  ellipse(hummingX-28, hummingY-5, 10, 20);
  ellipse(hummingX-19, hummingY+2, 10, 30);
  ellipse(hummingX-10, hummingY+5, 10, 40);
}

void tropForest() {
  noStroke();
  tropBackground();
  snake();
  hummingbird();
  if (close) {//chooses which direction the panther faces based on the boolean value
    panther2();
  } else {
    panther();
  }
  info();
  if (mousePressed && mouseX>=700 && mouseX<=770 && mouseY>=445 && mouseY<=475) {//if click right arrow, move to the right
    delay(200);
    isInside1=false;
    isInside2=true;
    info=false;
  }
}
