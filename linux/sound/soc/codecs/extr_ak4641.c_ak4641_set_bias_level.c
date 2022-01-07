
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct ak4641_priv {int regmap; } ;
struct ak4641_platform_data {int gpio_power; int gpio_npdn; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {struct ak4641_platform_data* platform_data; } ;


 int AK4641_DAC ;
 int AK4641_PM1 ;
 int AK4641_PM2 ;




 int dev_err (TYPE_1__*,char*,int) ;
 int gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct ak4641_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ak4641_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct ak4641_priv *ak4641 = snd_soc_component_get_drvdata(component);
 struct ak4641_platform_data *pdata = component->dev->platform_data;
 int ret;

 switch (level) {
 case 130:

  snd_soc_component_update_bits(component, AK4641_DAC, 0x20, 0);
  break;
 case 129:

  snd_soc_component_update_bits(component, AK4641_DAC, 0x20, 0x20);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   if (pdata && gpio_is_valid(pdata->gpio_power))
    gpio_set_value(pdata->gpio_power, 1);
   mdelay(1);
   if (pdata && gpio_is_valid(pdata->gpio_npdn))
    gpio_set_value(pdata->gpio_npdn, 1);
   mdelay(1);

   ret = regcache_sync(ak4641->regmap);
   if (ret) {
    dev_err(component->dev,
     "Failed to sync cache: %d\n", ret);
    return ret;
   }
  }
  snd_soc_component_update_bits(component, AK4641_PM1, 0x80, 0x80);
  snd_soc_component_update_bits(component, AK4641_PM2, 0x80, 0);
  break;
 case 131:
  snd_soc_component_update_bits(component, AK4641_PM1, 0x80, 0);
  if (pdata && gpio_is_valid(pdata->gpio_npdn))
   gpio_set_value(pdata->gpio_npdn, 0);
  if (pdata && gpio_is_valid(pdata->gpio_power))
   gpio_set_value(pdata->gpio_power, 0);
  regcache_mark_dirty(ak4641->regmap);
  break;
 }
 return 0;
}
