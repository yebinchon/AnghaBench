
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct adau1373 {int regmap; } ;


 int ADAU1373_SOFT_RESET ;
 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adau1373_component_driver ;
 int adau1373_dai_driver ;
 int adau1373_regmap_config ;
 int dev_set_drvdata (int *,struct adau1373*) ;
 struct adau1373* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int adau1373_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct adau1373 *adau1373;
 int ret;

 adau1373 = devm_kzalloc(&client->dev, sizeof(*adau1373), GFP_KERNEL);
 if (!adau1373)
  return -ENOMEM;

 adau1373->regmap = devm_regmap_init_i2c(client,
  &adau1373_regmap_config);
 if (IS_ERR(adau1373->regmap))
  return PTR_ERR(adau1373->regmap);

 regmap_write(adau1373->regmap, ADAU1373_SOFT_RESET, 0x00);

 dev_set_drvdata(&client->dev, adau1373);

 ret = devm_snd_soc_register_component(&client->dev,
   &adau1373_component_driver,
   adau1373_dai_driver, ARRAY_SIZE(adau1373_dai_driver));
 return ret;
}
