
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5663_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 int RT5663_RESET ;
 struct rt5663_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void rt5663_i2c_shutdown(struct i2c_client *client)
{
 struct rt5663_priv *rt5663 = i2c_get_clientdata(client);

 regmap_write(rt5663->regmap, RT5663_RESET, 0);
}
