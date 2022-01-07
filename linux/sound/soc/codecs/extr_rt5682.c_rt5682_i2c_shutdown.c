
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5682_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 struct rt5682_priv* i2c_get_clientdata (struct i2c_client*) ;
 int rt5682_reset (int ) ;

__attribute__((used)) static void rt5682_i2c_shutdown(struct i2c_client *client)
{
 struct rt5682_priv *rt5682 = i2c_get_clientdata(client);

 rt5682_reset(rt5682->regmap);
}
