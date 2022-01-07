
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max98090_priv {int regmap; } ;
struct i2c_client {int dev; } ;


 int M98090_REG_DEVICE_SHUTDOWN ;
 int M98090_REG_LEVEL_CONTROL ;
 int M98090_VSENN_MASK ;
 struct max98090_priv* dev_get_drvdata (int *) ;
 int msleep (int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void max98090_i2c_shutdown(struct i2c_client *i2c)
{
 struct max98090_priv *max98090 = dev_get_drvdata(&i2c->dev);





 regmap_write(max98090->regmap,
  M98090_REG_LEVEL_CONTROL, M98090_VSENN_MASK);
 regmap_write(max98090->regmap,
  M98090_REG_DEVICE_SHUTDOWN, 0x00);
 msleep(40);
}
