
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct da7213_priv {int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int da7213_dai ;
 int da7213_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct da7213_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct da7213_priv*) ;
 int soc_component_dev_da7213 ;

__attribute__((used)) static int da7213_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct da7213_priv *da7213;
 int ret;

 da7213 = devm_kzalloc(&i2c->dev, sizeof(*da7213), GFP_KERNEL);
 if (!da7213)
  return -ENOMEM;

 i2c_set_clientdata(i2c, da7213);

 da7213->regmap = devm_regmap_init_i2c(i2c, &da7213_regmap_config);
 if (IS_ERR(da7213->regmap)) {
  ret = PTR_ERR(da7213->regmap);
  dev_err(&i2c->dev, "regmap_init() failed: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_da7213, &da7213_dai, 1);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to register da7213 component: %d\n",
   ret);
 }
 return ret;
}
