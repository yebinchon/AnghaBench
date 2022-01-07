
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5659_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 int RT5659_RESET ;
 struct rt5659_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void rt5659_i2c_shutdown(struct i2c_client *client)
{
 struct rt5659_priv *rt5659 = i2c_get_clientdata(client);

 regmap_write(rt5659->regmap, RT5659_RESET, 0);
}
