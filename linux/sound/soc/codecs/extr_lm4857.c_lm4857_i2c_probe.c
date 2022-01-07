
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int lm4857_component_driver ;
 int lm4857_regmap_config ;

__attribute__((used)) static int lm4857_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(i2c, &lm4857_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return devm_snd_soc_register_component(&i2c->dev,
  &lm4857_component_driver, ((void*)0), 0);
}
