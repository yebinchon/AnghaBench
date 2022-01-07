
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int ak4671_dai ;
 int ak4671_regmap ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int soc_component_dev_ak4671 ;

__attribute__((used)) static int ak4671_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct regmap *regmap;
 int ret;

 regmap = devm_regmap_init_i2c(client, &ak4671_regmap);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  dev_err(&client->dev, "Failed to create regmap: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&client->dev,
   &soc_component_dev_ak4671, &ak4671_dai, 1);
 return ret;
}
