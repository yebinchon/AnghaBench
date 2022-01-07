
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uda1380_platform_data {int gpio_power; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {struct uda1380_platform_data* platform_data; } ;


 int R02_PON_BIAS ;




 int UDA1380_CACHEREGNUM ;
 int UDA1380_MVOL ;
 int UDA1380_PM ;
 int gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int set_bit (int,int *) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int uda1380_cache_dirty ;
 int uda1380_read_reg_cache (struct snd_soc_component*,int ) ;
 int uda1380_reset (struct snd_soc_component*) ;
 int uda1380_sync_cache (struct snd_soc_component*) ;
 int uda1380_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int uda1380_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 int pm = uda1380_read_reg_cache(component, UDA1380_PM);
 int reg;
 struct uda1380_platform_data *pdata = component->dev->platform_data;

 switch (level) {
 case 130:
 case 129:

  uda1380_write(component, UDA1380_PM, R02_PON_BIAS | pm);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   if (gpio_is_valid(pdata->gpio_power)) {
    gpio_set_value(pdata->gpio_power, 1);
    mdelay(1);
    uda1380_reset(component);
   }

   uda1380_sync_cache(component);
  }
  uda1380_write(component, UDA1380_PM, 0x0);
  break;
 case 131:
  if (!gpio_is_valid(pdata->gpio_power))
   break;

  gpio_set_value(pdata->gpio_power, 0);




  for (reg = UDA1380_MVOL; reg < UDA1380_CACHEREGNUM; reg++)
   set_bit(reg - 0x10, &uda1380_cache_dirty);
 }
 return 0;
}
