
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8955_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 struct wm8955_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8955_priv*) ;
 int soc_component_dev_wm8955 ;
 int wm8955_dai ;
 int wm8955_regmap ;

__attribute__((used)) static int wm8955_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8955_priv *wm8955;
 int ret;

 wm8955 = devm_kzalloc(&i2c->dev, sizeof(struct wm8955_priv),
         GFP_KERNEL);
 if (wm8955 == ((void*)0))
  return -ENOMEM;

 wm8955->regmap = devm_regmap_init_i2c(i2c, &wm8955_regmap);
 if (IS_ERR(wm8955->regmap)) {
  ret = PTR_ERR(wm8955->regmap);
  dev_err(&i2c->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 i2c_set_clientdata(i2c, wm8955);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm8955, &wm8955_dai, 1);

 return ret;
}
