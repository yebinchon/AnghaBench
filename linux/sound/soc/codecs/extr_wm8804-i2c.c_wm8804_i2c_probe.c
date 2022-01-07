
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
 int wm8804_probe (int *,struct regmap*) ;
 int wm8804_regmap_config ;

__attribute__((used)) static int wm8804_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(i2c, &wm8804_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return wm8804_probe(&i2c->dev, regmap);
}
