
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct tas6424_data {int fault_check_work; int * regmap; TYPE_1__* supplies; int * mute_gpio; int * standby_gpio; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_6__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TAS6424_MODE_CTRL ;
 int TAS6424_RESET ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct tas6424_data*) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct tas6424_data* devm_kzalloc (struct device*,int,int ) ;
 int * devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,TYPE_1__*,int) ;
 int regmap_update_bits (int *,int ,int ,int ) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int soc_codec_dev_tas6424 ;
 TYPE_1__* tas6424_dai ;
 int tas6424_fault_check_work ;
 int tas6424_regmap_config ;
 int * tas6424_supply_names ;

__attribute__((used)) static int tas6424_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct tas6424_data *tas6424;
 int ret;
 int i;

 tas6424 = devm_kzalloc(dev, sizeof(*tas6424), GFP_KERNEL);
 if (!tas6424)
  return -ENOMEM;
 dev_set_drvdata(dev, tas6424);

 tas6424->dev = dev;

 tas6424->regmap = devm_regmap_init_i2c(client, &tas6424_regmap_config);
 if (IS_ERR(tas6424->regmap)) {
  ret = PTR_ERR(tas6424->regmap);
  dev_err(dev, "unable to allocate register map: %d\n", ret);
  return ret;
 }







 tas6424->standby_gpio = devm_gpiod_get_optional(dev, "standby",
            GPIOD_OUT_LOW);
 if (IS_ERR(tas6424->standby_gpio)) {
  if (PTR_ERR(tas6424->standby_gpio) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_info(dev, "failed to get standby GPIO: %ld\n",
   PTR_ERR(tas6424->standby_gpio));
  tas6424->standby_gpio = ((void*)0);
 }







 tas6424->mute_gpio = devm_gpiod_get_optional(dev, "mute",
            GPIOD_OUT_HIGH);
 if (IS_ERR(tas6424->mute_gpio)) {
  if (PTR_ERR(tas6424->mute_gpio) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_info(dev, "failed to get nmute GPIO: %ld\n",
   PTR_ERR(tas6424->mute_gpio));
  tas6424->mute_gpio = ((void*)0);
 }

 for (i = 0; i < ARRAY_SIZE(tas6424->supplies); i++)
  tas6424->supplies[i].supply = tas6424_supply_names[i];
 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(tas6424->supplies),
          tas6424->supplies);
 if (ret) {
  dev_err(dev, "unable to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(tas6424->supplies),
        tas6424->supplies);
 if (ret) {
  dev_err(dev, "unable to enable supplies: %d\n", ret);
  return ret;
 }


 ret = regmap_update_bits(tas6424->regmap, TAS6424_MODE_CTRL,
     TAS6424_RESET, TAS6424_RESET);
 if (ret) {
  dev_err(dev, "unable to reset device: %d\n", ret);
  return ret;
 }

 INIT_DELAYED_WORK(&tas6424->fault_check_work, tas6424_fault_check_work);

 ret = devm_snd_soc_register_component(dev, &soc_codec_dev_tas6424,
         tas6424_dai, ARRAY_SIZE(tas6424_dai));
 if (ret < 0) {
  dev_err(dev, "unable to register codec: %d\n", ret);
  return ret;
 }

 return 0;
}
