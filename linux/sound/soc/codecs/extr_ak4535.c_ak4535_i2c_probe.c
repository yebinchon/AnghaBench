
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct ak4535_priv {int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ak4535_dai ;
 int ak4535_regmap ;
 int dev_err (int *,char*,int) ;
 struct ak4535_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ak4535_priv*) ;
 int soc_component_dev_ak4535 ;

__attribute__((used)) static int ak4535_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct ak4535_priv *ak4535;
 int ret;

 ak4535 = devm_kzalloc(&i2c->dev, sizeof(struct ak4535_priv),
         GFP_KERNEL);
 if (ak4535 == ((void*)0))
  return -ENOMEM;

 ak4535->regmap = devm_regmap_init_i2c(i2c, &ak4535_regmap);
 if (IS_ERR(ak4535->regmap)) {
  ret = PTR_ERR(ak4535->regmap);
  dev_err(&i2c->dev, "Failed to init regmap: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(i2c, ak4535);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_ak4535, &ak4535_dai, 1);

 return ret;
}
