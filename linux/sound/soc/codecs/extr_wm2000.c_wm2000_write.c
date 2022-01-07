
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2000_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 struct wm2000_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int wm2000_write(struct i2c_client *i2c, unsigned int reg,
   unsigned int value)
{
 struct wm2000_priv *wm2000 = i2c_get_clientdata(i2c);
 return regmap_write(wm2000->regmap, reg, value);
}
