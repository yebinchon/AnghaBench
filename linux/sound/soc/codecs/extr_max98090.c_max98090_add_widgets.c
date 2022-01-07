
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct max98090_priv {scalar_t__ devtype; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ MAX98091 ;
 int max98090_dapm_routes ;
 int max98090_dapm_widgets ;
 int max98090_snd_controls ;
 int max98091_dapm_routes ;
 int max98091_dapm_widgets ;
 int max98091_snd_controls ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int max98090_add_widgets(struct snd_soc_component *component)
{
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 snd_soc_add_component_controls(component, max98090_snd_controls,
  ARRAY_SIZE(max98090_snd_controls));

 if (max98090->devtype == MAX98091) {
  snd_soc_add_component_controls(component, max98091_snd_controls,
   ARRAY_SIZE(max98091_snd_controls));
 }

 snd_soc_dapm_new_controls(dapm, max98090_dapm_widgets,
  ARRAY_SIZE(max98090_dapm_widgets));

 snd_soc_dapm_add_routes(dapm, max98090_dapm_routes,
  ARRAY_SIZE(max98090_dapm_routes));

 if (max98090->devtype == MAX98091) {
  snd_soc_dapm_new_controls(dapm, max98091_dapm_widgets,
   ARRAY_SIZE(max98091_dapm_widgets));

  snd_soc_dapm_add_routes(dapm, max98091_dapm_routes,
   ARRAY_SIZE(max98091_dapm_routes));
 }

 return 0;
}
