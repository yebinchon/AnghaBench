
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5514_priv {int i2c_regmap; } ;
struct i2c_client {int dummy; } ;


 unsigned int RT5514_DSP_MAPPING ;
 struct rt5514_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int rt5514_i2c_write(void *context, unsigned int reg, unsigned int val)
{
 struct i2c_client *client = context;
 struct rt5514_priv *rt5514 = i2c_get_clientdata(client);

 regmap_write(rt5514->i2c_regmap, reg | RT5514_DSP_MAPPING, val);

 return 0;
}
