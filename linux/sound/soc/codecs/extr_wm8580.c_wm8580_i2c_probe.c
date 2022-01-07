
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wm8580_priv {int drvdata; TYPE_1__* supplies; int regmap; } ;
struct of_device_id {int data; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_5__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct wm8580_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (int *,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (int *,int *,TYPE_1__*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8580_priv*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int soc_component_dev_wm8580 ;
 TYPE_1__* wm8580_dai ;
 int wm8580_of_match ;
 int wm8580_regmap ;
 int * wm8580_supply_names ;

__attribute__((used)) static int wm8580_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 const struct of_device_id *of_id;
 struct wm8580_priv *wm8580;
 int ret, i;

 wm8580 = devm_kzalloc(&i2c->dev, sizeof(struct wm8580_priv),
         GFP_KERNEL);
 if (wm8580 == ((void*)0))
  return -ENOMEM;

 wm8580->regmap = devm_regmap_init_i2c(i2c, &wm8580_regmap);
 if (IS_ERR(wm8580->regmap))
  return PTR_ERR(wm8580->regmap);

 for (i = 0; i < ARRAY_SIZE(wm8580->supplies); i++)
  wm8580->supplies[i].supply = wm8580_supply_names[i];

 ret = devm_regulator_bulk_get(&i2c->dev, ARRAY_SIZE(wm8580->supplies),
          wm8580->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(i2c, wm8580);

 of_id = of_match_device(wm8580_of_match, &i2c->dev);
 if (of_id)
  wm8580->drvdata = of_id->data;

 if (!wm8580->drvdata) {
  dev_err(&i2c->dev, "failed to find driver data\n");
  return -EINVAL;
 }

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm8580, wm8580_dai, ARRAY_SIZE(wm8580_dai));

 return ret;
}
