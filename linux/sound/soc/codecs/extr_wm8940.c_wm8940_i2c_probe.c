
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8940_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct wm8940_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8940_priv*) ;
 int soc_component_dev_wm8940 ;
 int wm8940_dai ;
 int wm8940_regmap ;

__attribute__((used)) static int wm8940_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8940_priv *wm8940;
 int ret;

 wm8940 = devm_kzalloc(&i2c->dev, sizeof(struct wm8940_priv),
         GFP_KERNEL);
 if (wm8940 == ((void*)0))
  return -ENOMEM;

 wm8940->regmap = devm_regmap_init_i2c(i2c, &wm8940_regmap);
 if (IS_ERR(wm8940->regmap))
  return PTR_ERR(wm8940->regmap);

 i2c_set_clientdata(i2c, wm8940);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm8940, &wm8940_dai, 1);

 return ret;
}
