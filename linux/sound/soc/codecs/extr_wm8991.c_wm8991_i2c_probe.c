
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8991_priv {int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WM8991_ALRCGPIO1 ;
 int WM8991_AUDIO_INTERFACE_4 ;
 int WM8991_DAC_CTRL ;
 int WM8991_GPIO1_GPIO2 ;
 int WM8991_GPIO1_SEL_MASK ;
 int WM8991_LEFT_OUTPUT_VOLUME ;
 int WM8991_OPCLK_ENA ;
 int WM8991_POWER_MANAGEMENT_1 ;
 int WM8991_POWER_MANAGEMENT_2 ;
 int WM8991_RESET ;
 int WM8991_RIGHT_OUTPUT_VOLUME ;
 int WM8991_VMID_MODE_MASK ;
 int WM8991_VREF_ENA ;
 int dev_err (int *,char*,int) ;
 struct wm8991_priv* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct wm8991_priv*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int soc_component_dev_wm8991 ;
 int wm8991_dai ;
 int wm8991_regmap ;

__attribute__((used)) static int wm8991_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct wm8991_priv *wm8991;
 unsigned int val;
 int ret;

 wm8991 = devm_kzalloc(&i2c->dev, sizeof(*wm8991), GFP_KERNEL);
 if (!wm8991)
  return -ENOMEM;

 wm8991->regmap = devm_regmap_init_i2c(i2c, &wm8991_regmap);
 if (IS_ERR(wm8991->regmap))
  return PTR_ERR(wm8991->regmap);

 i2c_set_clientdata(i2c, wm8991);

 ret = regmap_read(wm8991->regmap, WM8991_RESET, &val);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to read device ID: %d\n", ret);
  return ret;
 }
 if (val != 0x8991) {
  dev_err(&i2c->dev, "Device with ID %x is not a WM8991\n", val);
  return -EINVAL;
 }

 ret = regmap_write(wm8991->regmap, WM8991_RESET, 0);
 if (ret < 0) {
  dev_err(&i2c->dev, "Failed to issue reset: %d\n", ret);
  return ret;
 }

 regmap_update_bits(wm8991->regmap, WM8991_AUDIO_INTERFACE_4,
      WM8991_ALRCGPIO1, WM8991_ALRCGPIO1);

 regmap_update_bits(wm8991->regmap, WM8991_GPIO1_GPIO2,
      WM8991_GPIO1_SEL_MASK, 1);

 regmap_update_bits(wm8991->regmap, WM8991_POWER_MANAGEMENT_1,
      WM8991_VREF_ENA | WM8991_VMID_MODE_MASK,
      WM8991_VREF_ENA | WM8991_VMID_MODE_MASK);

 regmap_update_bits(wm8991->regmap, WM8991_POWER_MANAGEMENT_2,
      WM8991_OPCLK_ENA, WM8991_OPCLK_ENA);

 regmap_write(wm8991->regmap, WM8991_DAC_CTRL, 0);
 regmap_write(wm8991->regmap, WM8991_LEFT_OUTPUT_VOLUME,
       0x50 | (1<<8));
 regmap_write(wm8991->regmap, WM8991_RIGHT_OUTPUT_VOLUME,
       0x50 | (1<<8));

 ret = devm_snd_soc_register_component(&i2c->dev,
         &soc_component_dev_wm8991, &wm8991_dai, 1);

 return ret;
}
