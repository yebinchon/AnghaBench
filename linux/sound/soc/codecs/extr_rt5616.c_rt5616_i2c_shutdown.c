
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5616_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 int RT5616_HP_VOL ;
 int RT5616_LOUT_CTRL1 ;
 struct rt5616_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rt5616_i2c_shutdown(struct i2c_client *client)
{
 struct rt5616_priv *rt5616 = i2c_get_clientdata(client);

 regmap_write(rt5616->regmap, RT5616_HP_VOL, 0xc8c8);
 regmap_write(rt5616->regmap, RT5616_LOUT_CTRL1, 0xc8c8);
}
