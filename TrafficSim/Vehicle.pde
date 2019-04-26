class Vehicle extends Entity{
  //Parameters
  float currSpeed;
  float maxSpeed;
  float aggression;
  float accelConstant;
  boolean highlighted;
  color colour;
  float generalDistanceBetween;
  float currDistanceBetween;
  Lane currLane;
  Vehicle vehicleInFront;
  
  //Constructor
  Vehicle(float xInput, float yInput, float aggro, float ac, Lane cl, float cs){
    super(xInput,yInput,20,20);
    this.aggression = aggro;
    aggress(aggro);
    currLane = cl;
    this.accelConstant = ac;
    this.currSpeed = cs;
  }
  
  //Methods
  void setVIF(Vehicle v){
    this.vehicleInFront = v;
  }
  void aggress(float a){
    this.maxSpeed = a*this.currLane.currRoad.speedLimit;
    this.generalDistanceBetween = this.vehicleInFront.currSpeed*(2/3600);
  }
  void update
}
