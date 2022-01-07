
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct max98927_priv {int interleave_mode; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX98927_R01FF_REV_ID ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*,int) ;
 struct max98927_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct max98927_priv*) ;
 int max98927_dai ;
 int max98927_regmap ;
 int max98927_slot_config (struct i2c_client*,struct max98927_priv*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int regmap_read (int ,int,int*) ;
 int soc_component_dev_max98927 ;

__attribute__((used)) static int max98927_i2c_probe(struct i2c_client *i2c,
 const struct i2c_device_id *id)
{

 int ret = 0, value;
 int reg = 0;
 struct max98927_priv *max98927 = ((void*)0);

 max98927 = devm_kzalloc(&i2c->dev,
  sizeof(*max98927), GFP_KERNEL);

 if (!max98927) {
  ret = -ENOMEM;
  return ret;
 }
 i2c_set_clientdata(i2c, max98927);


 if (!of_property_read_u32(i2c->dev.of_node,
  "interleave_mode", &value)) {
  if (value > 0)
   max98927->interleave_mode = 1;
  else
   max98927->interleave_mode = 0;
 } else
  max98927->interleave_mode = 0;


 max98927->regmap
  = devm_regmap_init_i2c(i2c, &max98927_regmap);
 if (IS_ERR(max98927->regmap)) {
  ret = PTR_ERR(max98927->regmap);
  dev_err(&i2c->dev,
   "Failed to allocate regmap: %d\n", ret);
  return ret;
 }


 ret = regmap_read(max98927->regmap,
  MAX98927_R01FF_REV_ID, &reg);
 if (ret < 0) {
  dev_err(&i2c->dev,
   "Failed to read: 0x%02X\n", MAX98927_R01FF_REV_ID);
  return ret;
 }
 dev_info(&i2c->dev, "MAX98927 revisionID: 0x%02X\n", reg);


 max98927_slot_config(i2c, max98927);


 ret = devm_snd_soc_register_component(&i2c->dev,
  &soc_component_dev_max98927,
  max98927_dai, ARRAY_SIZE(max98927_dai));
 if (ret < 0)
  dev_err(&i2c->dev, "Failed to register component: %d\n", ret);

 return ret;
}
