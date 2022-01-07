
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5631_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct rt5631_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct rt5631_priv*) ;
 int rt5631_dai ;
 int rt5631_regmap_config ;
 int soc_component_dev_rt5631 ;

__attribute__((used)) static int rt5631_i2c_probe(struct i2c_client *i2c,
      const struct i2c_device_id *id)
{
 struct rt5631_priv *rt5631;
 int ret;

 rt5631 = devm_kzalloc(&i2c->dev, sizeof(struct rt5631_priv),
         GFP_KERNEL);
 if (((void*)0) == rt5631)
  return -ENOMEM;

 i2c_set_clientdata(i2c, rt5631);

 rt5631->regmap = devm_regmap_init_i2c(i2c, &rt5631_regmap_config);
 if (IS_ERR(rt5631->regmap))
  return PTR_ERR(rt5631->regmap);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_rt5631,
   rt5631_dai, ARRAY_SIZE(rt5631_dai));
 return ret;
}
