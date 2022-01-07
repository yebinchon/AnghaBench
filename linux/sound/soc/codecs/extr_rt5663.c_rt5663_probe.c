
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt5663_priv {int codec_ver; int imp_table; struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;


 int rt5663_hpvol_controls ;
 int rt5663_specific_controls ;
 int rt5663_specific_dapm_routes ;
 int rt5663_specific_dapm_widgets ;
 int rt5663_v2_specific_controls ;
 int rt5663_v2_specific_dapm_routes ;
 int rt5663_v2_specific_dapm_widgets ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int rt5663_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);

 rt5663->component = component;

 switch (rt5663->codec_ver) {
 case 128:
  snd_soc_dapm_new_controls(dapm,
   rt5663_v2_specific_dapm_widgets,
   ARRAY_SIZE(rt5663_v2_specific_dapm_widgets));
  snd_soc_dapm_add_routes(dapm,
   rt5663_v2_specific_dapm_routes,
   ARRAY_SIZE(rt5663_v2_specific_dapm_routes));
  snd_soc_add_component_controls(component, rt5663_v2_specific_controls,
   ARRAY_SIZE(rt5663_v2_specific_controls));
  break;
 case 129:
  snd_soc_dapm_new_controls(dapm,
   rt5663_specific_dapm_widgets,
   ARRAY_SIZE(rt5663_specific_dapm_widgets));
  snd_soc_dapm_add_routes(dapm,
   rt5663_specific_dapm_routes,
   ARRAY_SIZE(rt5663_specific_dapm_routes));
  snd_soc_add_component_controls(component, rt5663_specific_controls,
   ARRAY_SIZE(rt5663_specific_controls));

  if (!rt5663->imp_table)
   snd_soc_add_component_controls(component, rt5663_hpvol_controls,
    ARRAY_SIZE(rt5663_hpvol_controls));
  break;
 }

 return 0;
}
