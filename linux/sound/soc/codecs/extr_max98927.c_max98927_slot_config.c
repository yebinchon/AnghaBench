
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max98927_priv {int v_l_slot; int i_l_slot; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int device_property_read_u32 (struct device*,char*,int*) ;

__attribute__((used)) static void max98927_slot_config(struct i2c_client *i2c,
 struct max98927_priv *max98927)
{
 int value;
 struct device *dev = &i2c->dev;

 if (!device_property_read_u32(dev, "vmon-slot-no", &value))
  max98927->v_l_slot = value & 0xF;
 else
  max98927->v_l_slot = 0;

 if (!device_property_read_u32(dev, "imon-slot-no", &value))
  max98927->i_l_slot = value & 0xF;
 else
  max98927->i_l_slot = 1;
}
