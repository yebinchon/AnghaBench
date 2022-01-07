
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int cs42xx8_probe (int *,int ) ;
 int cs42xx8_regmap_config ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int pm_request_idle (int *) ;
 int pm_runtime_enable (int *) ;

__attribute__((used)) static int cs42xx8_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 int ret = cs42xx8_probe(&i2c->dev,
   devm_regmap_init_i2c(i2c, &cs42xx8_regmap_config));
 if (ret)
  return ret;

 pm_runtime_enable(&i2c->dev);
 pm_request_idle(&i2c->dev);

 return 0;
}
