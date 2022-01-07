
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct wm2000_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 struct wm2000_priv* i2c_get_clientdata (struct i2c_client*) ;
 int msleep (int) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int wm2000_poll_bit(struct i2c_client *i2c,
      unsigned int reg, u8 mask)
{
 struct wm2000_priv *wm2000 = i2c_get_clientdata(i2c);
 int timeout = 4000;
 unsigned int val;

 regmap_read(wm2000->regmap, reg, &val);

 while (!(val & mask) && --timeout) {
  msleep(1);
  regmap_read(wm2000->regmap, reg, &val);
 }

 if (timeout == 0)
  return 0;
 else
  return 1;
}
