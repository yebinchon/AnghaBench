
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max98504_priv {int brownout_enable; TYPE_1__* supplies; int regmap; int brownout_release_rate; int brownout_timed_hold; int brownout_attack_hold; int brownout_attenuation; int brownout_threshold; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int supply; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX98504_NUM_SUPPLIES ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct max98504_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct max98504_priv*) ;
 int max98504_component_driver ;
 int max98504_dai ;
 int max98504_regmap ;
 int * max98504_supply_names ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static int max98504_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device_node *node = dev->of_node;
 struct max98504_priv *max98504;
 int i, ret;

 max98504 = devm_kzalloc(dev, sizeof(*max98504), GFP_KERNEL);
 if (!max98504)
  return -ENOMEM;

 if (node) {
  if (!of_property_read_u32(node, "maxim,brownout-threshold",
     &max98504->brownout_threshold))
   max98504->brownout_enable = 1;

  of_property_read_u32(node, "maxim,brownout-attenuation",
     &max98504->brownout_attenuation);
  of_property_read_u32(node, "maxim,brownout-attack-hold-ms",
     &max98504->brownout_attack_hold);
  of_property_read_u32(node, "maxim,brownout-timed-hold-ms",
     &max98504->brownout_timed_hold);
  of_property_read_u32(node, "maxim,brownout-release-rate-ms",
     &max98504->brownout_release_rate);
 }

 max98504->regmap = devm_regmap_init_i2c(client, &max98504_regmap);
 if (IS_ERR(max98504->regmap)) {
  ret = PTR_ERR(max98504->regmap);
  dev_err(&client->dev, "regmap initialization failed: %d\n", ret);
  return ret;
 }

 for (i = 0; i < MAX98504_NUM_SUPPLIES; i++)
  max98504->supplies[i].supply = max98504_supply_names[i];

 ret = devm_regulator_bulk_get(dev, MAX98504_NUM_SUPPLIES,
          max98504->supplies);
 if (ret < 0)
  return ret;

 i2c_set_clientdata(client, max98504);

 return devm_snd_soc_register_component(dev, &max98504_component_driver,
    max98504_dai, ARRAY_SIZE(max98504_dai));
}
