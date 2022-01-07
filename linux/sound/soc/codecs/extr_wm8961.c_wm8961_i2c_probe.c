
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8961_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int WM8961_CHIP_REV_MASK ;
 unsigned int WM8961_CHIP_REV_SHIFT ;
 unsigned int WM8961_DEVICE_ID_MASK ;
 unsigned int WM8961_DEVICE_ID_SHIFT ;
 int WM8961_RIGHT_INPUT_VOLUME ;
 int WM8961_SOFTWARE_RESET ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,unsigned int,unsigned int) ;
 struct wm8961_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8961_priv*) ;
 int regcache_cache_bypass (int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;
 int soc_component_dev_wm8961 ;
 int wm8961_dai ;
 int wm8961_regmap ;

__attribute__((used)) static int wm8961_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8961_priv *wm8961;
 unsigned int val;
 int ret;

 wm8961 = devm_kzalloc(&i2c->dev, sizeof(struct wm8961_priv),
         GFP_KERNEL);
 if (wm8961 == ((void*)0))
  return -ENOMEM;

 wm8961->regmap = devm_regmap_init_i2c(i2c, &wm8961_regmap);
 if (IS_ERR(wm8961->regmap))
  return PTR_ERR(wm8961->regmap);

 ret = regmap_read(wm8961->regmap, WM8961_SOFTWARE_RESET, &val);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to read chip ID: %d\n", ret);
  return ret;
 }

 if (val != 0x1801) {
  dev_err(&i2c->dev, "Device is not a WM8961: ID=0x%x\n", val);
  return -EINVAL;
 }


 regcache_cache_bypass(wm8961->regmap, 1);
 ret = regmap_read(wm8961->regmap, WM8961_RIGHT_INPUT_VOLUME, &val);
 regcache_cache_bypass(wm8961->regmap, 0);

 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to read chip revision: %d\n", ret);
  return ret;
 }

 dev_info(&i2c->dev, "WM8961 family %d revision %c\n",
   (val & WM8961_DEVICE_ID_MASK) >> WM8961_DEVICE_ID_SHIFT,
   ((val & WM8961_CHIP_REV_MASK) >> WM8961_CHIP_REV_SHIFT)
   + 'A');

 ret = regmap_write(wm8961->regmap, WM8961_SOFTWARE_RESET, 0x1801);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to issue reset: %d\n", ret);
  return ret;
 }

 i2c_set_clientdata(i2c, wm8961);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm8961, &wm8961_dai, 1);

 return ret;
}
