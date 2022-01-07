
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct rt5670_priv {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;



 int RT5670_ID_MASK ;
 int RT5670_RESET ;
 int dev_err (int ,char*) ;
 int rt5670_specific_dapm_routes ;
 int rt5670_specific_dapm_widgets ;
 int rt5672_specific_dapm_routes ;
 int rt5672_specific_dapm_widgets ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int rt5670_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);

 switch (snd_soc_component_read32(component, RT5670_RESET) & RT5670_ID_MASK) {
 case 130:
 case 129:
  snd_soc_dapm_new_controls(dapm,
   rt5670_specific_dapm_widgets,
   ARRAY_SIZE(rt5670_specific_dapm_widgets));
  snd_soc_dapm_add_routes(dapm,
   rt5670_specific_dapm_routes,
   ARRAY_SIZE(rt5670_specific_dapm_routes));
  break;
 case 128:
  snd_soc_dapm_new_controls(dapm,
   rt5672_specific_dapm_widgets,
   ARRAY_SIZE(rt5672_specific_dapm_widgets));
  snd_soc_dapm_add_routes(dapm,
   rt5672_specific_dapm_routes,
   ARRAY_SIZE(rt5672_specific_dapm_routes));
  break;
 default:
  dev_err(component->dev,
   "The driver is for RT5670 RT5671 or RT5672 only\n");
  return -ENODEV;
 }
 rt5670->component = component;

 return 0;
}
