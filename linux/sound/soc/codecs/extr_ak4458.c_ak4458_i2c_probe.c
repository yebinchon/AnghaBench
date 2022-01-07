
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct ak4458_priv {int * dev; void* mute_gpiod; void* reset_gpiod; void* regmap; } ;
struct ak4458_drvdata {int dai_drv; int comp_drv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int ak4458_regmap ;
 int dev_err (int *,char*,int) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct ak4458_priv* devm_kzalloc (int *,int,int ) ;
 void* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int ,int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ak4458_priv*) ;
 struct ak4458_drvdata* of_device_get_match_data (int *) ;
 int pm_runtime_enable (int *) ;

__attribute__((used)) static int ak4458_i2c_probe(struct i2c_client *i2c)
{
 struct ak4458_priv *ak4458;
 const struct ak4458_drvdata *drvdata;
 int ret;

 ak4458 = devm_kzalloc(&i2c->dev, sizeof(*ak4458), GFP_KERNEL);
 if (!ak4458)
  return -ENOMEM;

 ak4458->regmap = devm_regmap_init_i2c(i2c, &ak4458_regmap);
 if (IS_ERR(ak4458->regmap))
  return PTR_ERR(ak4458->regmap);

 i2c_set_clientdata(i2c, ak4458);
 ak4458->dev = &i2c->dev;

 drvdata = of_device_get_match_data(&i2c->dev);

 ak4458->reset_gpiod = devm_gpiod_get_optional(ak4458->dev, "reset",
            GPIOD_OUT_LOW);
 if (IS_ERR(ak4458->reset_gpiod))
  return PTR_ERR(ak4458->reset_gpiod);

 ak4458->mute_gpiod = devm_gpiod_get_optional(ak4458->dev, "mute",
           GPIOD_OUT_LOW);
 if (IS_ERR(ak4458->mute_gpiod))
  return PTR_ERR(ak4458->mute_gpiod);

 ret = devm_snd_soc_register_component(ak4458->dev, drvdata->comp_drv,
           drvdata->dai_drv, 1);
 if (ret < 0) {
  dev_err(ak4458->dev, "Failed to register CODEC: %d\n", ret);
  return ret;
 }

 pm_runtime_enable(&i2c->dev);

 return 0;
}
