
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uda1380_priv {int work; struct snd_soc_component* component; } ;
struct uda1380_platform_data {int dac_clk; int gpio_power; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct TYPE_2__ {struct uda1380_platform_data* platform_data; } ;


 int INIT_WORK (int *,int ) ;
 int R00_DAC_CLK ;
 int UDA1380_CLK ;


 int gpio_is_valid (int ) ;
 struct uda1380_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int uda1380_flush_work ;
 int uda1380_reset (struct snd_soc_component*) ;
 int uda1380_write_reg_cache (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int uda1380_probe(struct snd_soc_component *component)
{
 struct uda1380_platform_data *pdata =component->dev->platform_data;
 struct uda1380_priv *uda1380 = snd_soc_component_get_drvdata(component);
 int ret;

 uda1380->component = component;

 if (!gpio_is_valid(pdata->gpio_power)) {
  ret = uda1380_reset(component);
  if (ret)
   return ret;
 }

 INIT_WORK(&uda1380->work, uda1380_flush_work);


 switch (pdata->dac_clk) {
 case 129:
  uda1380_write_reg_cache(component, UDA1380_CLK, 0);
  break;
 case 128:
  uda1380_write_reg_cache(component, UDA1380_CLK,
   R00_DAC_CLK);
  break;
 }

 return 0;
}
