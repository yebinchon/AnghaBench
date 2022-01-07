
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tas2552_data {TYPE_1__* supplies; int regmap; struct i2c_client* tas2552_client; int enable_gpio; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_5__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct tas2552_data*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct tas2552_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,TYPE_1__*,int) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_sync_autosuspend (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int soc_component_dev_tas2552 ;
 TYPE_1__* tas2552_dai ;
 int tas2552_regmap_config ;
 int * tas2552_supply_names ;

__attribute__((used)) static int tas2552_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct device *dev;
 struct tas2552_data *data;
 int ret;
 int i;

 dev = &client->dev;
 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 data->enable_gpio = devm_gpiod_get_optional(dev, "enable",
          GPIOD_OUT_LOW);
 if (IS_ERR(data->enable_gpio))
  return PTR_ERR(data->enable_gpio);

 data->tas2552_client = client;
 data->regmap = devm_regmap_init_i2c(client, &tas2552_regmap_config);
 if (IS_ERR(data->regmap)) {
  ret = PTR_ERR(data->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(data->supplies); i++)
  data->supplies[i].supply = tas2552_supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(data->supplies),
          data->supplies);
 if (ret != 0) {
  dev_err(dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 pm_runtime_set_active(&client->dev);
 pm_runtime_set_autosuspend_delay(&client->dev, 1000);
 pm_runtime_use_autosuspend(&client->dev);
 pm_runtime_enable(&client->dev);
 pm_runtime_mark_last_busy(&client->dev);
 pm_runtime_put_sync_autosuspend(&client->dev);

 dev_set_drvdata(&client->dev, data);

 ret = devm_snd_soc_register_component(&client->dev,
          &soc_component_dev_tas2552,
          tas2552_dai, ARRAY_SIZE(tas2552_dai));
 if (ret < 0)
  dev_err(&client->dev, "Failed to register component: %d\n", ret);

 return ret;
}
