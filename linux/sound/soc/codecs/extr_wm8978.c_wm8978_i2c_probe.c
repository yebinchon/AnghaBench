
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8978_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WM8978_RESET ;
 int dev_err (int *,char*,int) ;
 struct wm8978_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8978_priv*) ;
 int regmap_write (int ,int ,int ) ;
 int soc_component_dev_wm8978 ;
 int wm8978_dai ;
 int wm8978_regmap_config ;

__attribute__((used)) static int wm8978_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8978_priv *wm8978;
 int ret;

 wm8978 = devm_kzalloc(&i2c->dev, sizeof(struct wm8978_priv),
         GFP_KERNEL);
 if (wm8978 == ((void*)0))
  return -ENOMEM;

 wm8978->regmap = devm_regmap_init_i2c(i2c, &wm8978_regmap_config);
 if (IS_ERR(wm8978->regmap)) {
  ret = PTR_ERR(wm8978->regmap);
  dev_err(&i2c->dev, "Failed to allocate regmap: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(i2c, wm8978);


 ret = regmap_write(wm8978->regmap, WM8978_RESET, 0);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to issue reset: %d\n", ret);
  return ret;
 }

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm8978, &wm8978_dai, 1);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to register CODEC: %d\n", ret);
  return ret;
 }

 return 0;
}
