
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
 int pcm3168a_probe (int *,struct regmap*) ;
 int pcm3168a_regmap ;

__attribute__((used)) static int pcm3168a_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(i2c, &pcm3168a_regmap);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return pcm3168a_probe(&i2c->dev, regmap);
}
