
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1308_priv {int regmap; } ;
struct i2c_client {int dummy; } ;


 int RT1308_RESET ;
 struct rt1308_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void rt1308_i2c_shutdown(struct i2c_client *client)
{
 struct rt1308_priv *rt1308 = i2c_get_clientdata(client);

 regmap_write(rt1308->regmap, RT1308_RESET, 0);
}
