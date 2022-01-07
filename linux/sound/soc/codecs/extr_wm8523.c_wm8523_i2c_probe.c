
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wm8523_priv {TYPE_1__* supplies; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_5__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int WM8523_CHIP_REV_MASK ;
 int WM8523_DEVICE_ID ;
 int WM8523_REVISION ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,unsigned int) ;
 struct wm8523_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_regulator_bulk_get (int *,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8523_priv*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_disable (int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int soc_component_dev_wm8523 ;
 int wm8523_dai ;
 int wm8523_regmap ;
 int * wm8523_supply_names ;

__attribute__((used)) static int wm8523_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8523_priv *wm8523;
 unsigned int val;
 int ret, i;

 wm8523 = devm_kzalloc(&i2c->dev, sizeof(struct wm8523_priv),
         GFP_KERNEL);
 if (wm8523 == ((void*)0))
  return -ENOMEM;

 wm8523->regmap = devm_regmap_init_i2c(i2c, &wm8523_regmap);
 if (IS_ERR(wm8523->regmap)) {
  ret = PTR_ERR(wm8523->regmap);
  dev_err(&i2c->dev, "Failed to create regmap: %d\n", ret);
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(wm8523->supplies); i++)
  wm8523->supplies[i].supply = wm8523_supply_names[i];

 ret = devm_regulator_bulk_get(&i2c->dev, ARRAY_SIZE(wm8523->supplies),
          wm8523->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(wm8523->supplies),
        wm8523->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 ret = regmap_read(wm8523->regmap, WM8523_DEVICE_ID, &val);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to read ID register\n");
  goto err_enable;
 }
 if (val != 0x8523) {
  dev_err(&i2c->dev, "Device is not a WM8523, ID is %x\n", ret);
  ret = -EINVAL;
  goto err_enable;
 }

 ret = regmap_read(wm8523->regmap, WM8523_REVISION, &val);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to read revision register\n");
  goto err_enable;
 }
 dev_info(&i2c->dev, "revision %c\n",
   (val & WM8523_CHIP_REV_MASK) + 'A');

 ret = regmap_write(wm8523->regmap, WM8523_DEVICE_ID, 0x8523);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to reset device: %d\n", ret);
  goto err_enable;
 }

 regulator_bulk_disable(ARRAY_SIZE(wm8523->supplies), wm8523->supplies);

 i2c_set_clientdata(i2c, wm8523);

 ret = devm_snd_soc_register_component(&i2c->dev,
   &soc_component_dev_wm8523, &wm8523_dai, 1);

 return ret;

err_enable:
 regulator_bulk_disable(ARRAY_SIZE(wm8523->supplies), wm8523->supplies);
 return ret;
}
