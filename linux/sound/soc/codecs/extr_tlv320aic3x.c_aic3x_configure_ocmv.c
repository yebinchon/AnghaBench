
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct aic3x_priv {int ocmv; TYPE_1__* supplies; } ;
struct TYPE_3__ {int consumer; } ;


 int HPOUT_SC_OCMV_1_35V ;
 int HPOUT_SC_OCMV_1_5V ;
 int HPOUT_SC_OCMV_1_65V ;
 int HPOUT_SC_OCMV_1_8V ;
 int dev_warn (TYPE_2__*,char*,int,int) ;
 struct aic3x_priv* i2c_get_clientdata (struct i2c_client*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static void aic3x_configure_ocmv(struct i2c_client *client)
{
 struct device_node *np = client->dev.of_node;
 struct aic3x_priv *aic3x = i2c_get_clientdata(client);
 u32 value;
 int dvdd, avdd;

 if (np && !of_property_read_u32(np, "ai3x-ocmv", &value)) {

  if (value <= 3) {
   aic3x->ocmv = value;
   return;
  }
 }

 dvdd = regulator_get_voltage(aic3x->supplies[1].consumer);
 avdd = regulator_get_voltage(aic3x->supplies[2].consumer);

 if (avdd > 3600000 || dvdd > 1950000) {
  dev_warn(&client->dev,
    "Too high supply voltage(s) AVDD: %d, DVDD: %d\n",
    avdd, dvdd);
 } else if (avdd == 3600000 && dvdd == 1950000) {
  aic3x->ocmv = HPOUT_SC_OCMV_1_8V;
 } else if (avdd > 3300000 && dvdd > 1800000) {
  aic3x->ocmv = HPOUT_SC_OCMV_1_65V;
 } else if (avdd > 3000000 && dvdd > 1650000) {
  aic3x->ocmv = HPOUT_SC_OCMV_1_5V;
 } else if (avdd >= 2700000 && dvdd >= 1525000) {
  aic3x->ocmv = HPOUT_SC_OCMV_1_35V;
 } else {
  dev_warn(&client->dev,
    "Invalid supply voltage(s) AVDD: %d, DVDD: %d\n",
    avdd, dvdd);
 }
}
