
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8940_priv {int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8940_OUTPUTCTL ;
 int WM8940_POWER1 ;
 int dev_err (int ,char*,int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8940_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8940_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8940_priv *wm8940 = snd_soc_component_get_drvdata(component);
 u16 val;
 u16 pwr_reg = snd_soc_component_read32(component, WM8940_POWER1) & 0x1F0;
 int ret = 0;

 switch (level) {
 case 130:

  pwr_reg |= (1 << 2) | (1 << 3);

  val = snd_soc_component_read32(component, WM8940_OUTPUTCTL);
  ret = snd_soc_component_write(component, WM8940_OUTPUTCTL, val | 0x2);
  if (ret)
   break;

  ret = snd_soc_component_write(component, WM8940_POWER1, pwr_reg | 0x1);
  break;
 case 129:

  pwr_reg |= (1 << 2) | (1 << 3);
  ret = snd_soc_component_write(component, WM8940_POWER1, pwr_reg | 0x1);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regcache_sync(wm8940->regmap);
   if (ret < 0) {
    dev_err(component->dev, "Failed to sync cache: %d\n", ret);
    return ret;
   }
  }


  pwr_reg |= (1 << 2) | (1 << 3);

  ret = snd_soc_component_write(component, WM8940_POWER1, pwr_reg | 0x2);
  break;
 case 131:
  ret = snd_soc_component_write(component, WM8940_POWER1, pwr_reg);
  break;
 }

 return ret;
}
