
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; int irq; } ;
struct da7218_priv {scalar_t__ dev_id; int regmap; int irq; } ;


 scalar_t__ DA7217_DEV_ID ;
 scalar_t__ DA7218_DEV_ID ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int da7218_dai ;
 scalar_t__ da7218_of_get_id (TYPE_1__*) ;
 int da7218_regmap_config ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct da7218_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct da7218_priv*) ;
 int soc_component_dev_da7218 ;

__attribute__((used)) static int da7218_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct da7218_priv *da7218;
 int ret;

 da7218 = devm_kzalloc(&i2c->dev, sizeof(*da7218), GFP_KERNEL);
 if (!da7218)
  return -ENOMEM;

 i2c_set_clientdata(i2c, da7218);

 if (i2c->dev.of_node)
  da7218->dev_id = da7218_of_get_id(&i2c->dev);
 else
  da7218->dev_id = id->driver_data;

 if ((da7218->dev_id != DA7217_DEV_ID) &&
     (da7218->dev_id != DA7218_DEV_ID)) {
  dev_err(&i2c->dev, "Invalid device Id\n");
  return -EINVAL;
 }

 da7218->irq = i2c->irq;

 da7218->regmap = devm_regmap_init_i2c(i2c, &da7218_regmap_config);
 if (IS_ERR(da7218->regmap)) {
  ret = PTR_ERR(da7218->regmap);
  dev_err(&i2c->dev, "regmap_init() failed: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_da7218, &da7218_dai, 1);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to register da7218 component: %d\n",
   ret);
 }
 return ret;
}
