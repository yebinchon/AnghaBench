
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tas5720_data {int devtype; TYPE_1__* supplies; int regmap; struct i2c_client* tas5720_client; } ;
struct regmap_config {int dummy; } ;
struct i2c_device_id {int driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_5__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;


 int dev_err (struct device*,char*,...) ;
 int dev_set_drvdata (struct device*,struct tas5720_data*) ;
 struct tas5720_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,TYPE_1__*,int) ;
 int soc_component_dev_tas5720 ;
 int soc_component_dev_tas5722 ;
 TYPE_1__* tas5720_dai ;
 struct regmap_config tas5720_regmap_config ;
 int * tas5720_supply_names ;
 struct regmap_config tas5722_regmap_config ;

__attribute__((used)) static int tas5720_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct tas5720_data *data;
 const struct regmap_config *regmap_config;
 int ret;
 int i;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->tas5720_client = client;
 data->devtype = id->driver_data;

 switch (id->driver_data) {
 case 129:
  regmap_config = &tas5720_regmap_config;
  break;
 case 128:
  regmap_config = &tas5722_regmap_config;
  break;
 default:
  dev_err(dev, "unexpected private driver data\n");
  return -EINVAL;
 }
 data->regmap = devm_regmap_init_i2c(client, regmap_config);
 if (IS_ERR(data->regmap)) {
  ret = PTR_ERR(data->regmap);
  dev_err(dev, "failed to allocate register map: %d\n", ret);
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(data->supplies); i++)
  data->supplies[i].supply = tas5720_supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(data->supplies),
          data->supplies);
 if (ret != 0) {
  dev_err(dev, "failed to request supplies: %d\n", ret);
  return ret;
 }

 dev_set_drvdata(dev, data);

 switch (id->driver_data) {
 case 129:
  ret = devm_snd_soc_register_component(&client->dev,
     &soc_component_dev_tas5720,
     tas5720_dai,
     ARRAY_SIZE(tas5720_dai));
  break;
 case 128:
  ret = devm_snd_soc_register_component(&client->dev,
     &soc_component_dev_tas5722,
     tas5720_dai,
     ARRAY_SIZE(tas5720_dai));
  break;
 default:
  dev_err(dev, "unexpected private driver data\n");
  return -EINVAL;
 }
 if (ret < 0) {
  dev_err(dev, "failed to register component: %d\n", ret);
  return ret;
 }

 return 0;
}
