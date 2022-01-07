
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct max98095_priv {int pdata; int devtype; int regmap; int lock; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_4__ {int platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct max98095_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct max98095_priv*) ;
 int max98095_dai ;
 int max98095_regmap ;
 int mutex_init (int *) ;
 int soc_component_dev_max98095 ;

__attribute__((used)) static int max98095_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct max98095_priv *max98095;
 int ret;

 max98095 = devm_kzalloc(&i2c->dev, sizeof(struct max98095_priv),
    GFP_KERNEL);
 if (max98095 == ((void*)0))
  return -ENOMEM;

 mutex_init(&max98095->lock);

 max98095->regmap = devm_regmap_init_i2c(i2c, &max98095_regmap);
 if (IS_ERR(max98095->regmap)) {
  ret = PTR_ERR(max98095->regmap);
  dev_err(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }

 max98095->devtype = id->driver_data;
 i2c_set_clientdata(i2c, max98095);
 max98095->pdata = i2c->dev.platform_data;

 ret = devm_snd_soc_register_component(&i2c->dev,
         &soc_component_dev_max98095,
         max98095_dai, ARRAY_SIZE(max98095_dai));
 return ret;
}
