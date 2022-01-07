
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct regmap*) ;
 int isabelle_dai ;
 int isabelle_regmap_config ;
 int soc_component_dev_isabelle ;

__attribute__((used)) static int isabelle_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct regmap *isabelle_regmap;
 int ret = 0;

 isabelle_regmap = devm_regmap_init_i2c(i2c, &isabelle_regmap_config);
 if (IS_ERR(isabelle_regmap)) {
  ret = PTR_ERR(isabelle_regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }
 i2c_set_clientdata(i2c, isabelle_regmap);

 ret = devm_snd_soc_register_component(&i2c->dev,
    &soc_component_dev_isabelle, isabelle_dai,
    ARRAY_SIZE(isabelle_dai));
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to register component: %d\n", ret);
  return ret;
 }

 return ret;
}
