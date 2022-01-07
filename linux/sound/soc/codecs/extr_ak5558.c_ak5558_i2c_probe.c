
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct ak5558_priv {int reset_gpiod; struct i2c_client* i2c; int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ak5558_dai ;
 int ak5558_regmap ;
 int devm_gpiod_get_optional (int *,char*,int ) ;
 struct ak5558_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ak5558_priv*) ;
 int pm_runtime_enable (int *) ;
 int soc_codec_dev_ak5558 ;

__attribute__((used)) static int ak5558_i2c_probe(struct i2c_client *i2c)
{
 struct ak5558_priv *ak5558;
 int ret = 0;

 ak5558 = devm_kzalloc(&i2c->dev, sizeof(*ak5558), GFP_KERNEL);
 if (!ak5558)
  return -ENOMEM;

 ak5558->regmap = devm_regmap_init_i2c(i2c, &ak5558_regmap);
 if (IS_ERR(ak5558->regmap))
  return PTR_ERR(ak5558->regmap);

 i2c_set_clientdata(i2c, ak5558);
 ak5558->i2c = i2c;

 ak5558->reset_gpiod = devm_gpiod_get_optional(&i2c->dev, "reset",
            GPIOD_OUT_LOW);
 if (IS_ERR(ak5558->reset_gpiod))
  return PTR_ERR(ak5558->reset_gpiod);

 ret = devm_snd_soc_register_component(&i2c->dev,
         &soc_codec_dev_ak5558,
         &ak5558_dai, 1);
 if (ret)
  return ret;

 pm_runtime_enable(&i2c->dev);

 return 0;
}
