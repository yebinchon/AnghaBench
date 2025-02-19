
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct da9055_priv {int regmap; struct da9055_platform_data* pdata; } ;
struct da9055_platform_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int da9055_dai ;
 int da9055_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct da9055_platform_data* dev_get_platdata (int *) ;
 struct da9055_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct da9055_priv*) ;
 int soc_component_dev_da9055 ;

__attribute__((used)) static int da9055_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct da9055_priv *da9055;
 struct da9055_platform_data *pdata = dev_get_platdata(&i2c->dev);
 int ret;

 da9055 = devm_kzalloc(&i2c->dev, sizeof(struct da9055_priv),
         GFP_KERNEL);
 if (!da9055)
  return -ENOMEM;

 if (pdata)
  da9055->pdata = pdata;

 i2c_set_clientdata(i2c, da9055);

 da9055->regmap = devm_regmap_init_i2c(i2c, &da9055_regmap_config);
 if (IS_ERR(da9055->regmap)) {
  ret = PTR_ERR(da9055->regmap);
  dev_err(&i2c->dev, "regmap_init() failed: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_da9055, &da9055_dai, 1);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to register da9055 component: %d\n",
   ret);
 }
 return ret;
}
