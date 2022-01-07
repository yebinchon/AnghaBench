
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1305_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 struct rt1305_priv* i2c_get_clientdata (struct i2c_client*) ;
 int rt1305_reset (int ) ;

__attribute__((used)) static void rt1305_i2c_shutdown(struct i2c_client *client)
{
 struct rt1305_priv *rt1305 = i2c_get_clientdata(client);

 rt1305_reset(rt1305->regmap);
}
