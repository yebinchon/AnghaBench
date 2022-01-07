
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8985_priv {int dev_type; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;


 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8985_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int wm8758_dapm_widgets ;
 int wm8985_aux_dapm_routes ;
 int wm8985_dapm_widgets ;
 int wm8985_specific_snd_controls ;

__attribute__((used)) static int wm8985_add_widgets(struct snd_soc_component *component)
{
 struct wm8985_priv *wm8985 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 switch (wm8985->dev_type) {
 case 129:
  snd_soc_dapm_new_controls(dapm, wm8758_dapm_widgets,
       ARRAY_SIZE(wm8758_dapm_widgets));
  break;

 case 128:
  snd_soc_add_component_controls(component, wm8985_specific_snd_controls,
   ARRAY_SIZE(wm8985_specific_snd_controls));

  snd_soc_dapm_new_controls(dapm, wm8985_dapm_widgets,
   ARRAY_SIZE(wm8985_dapm_widgets));
  snd_soc_dapm_add_routes(dapm, wm8985_aux_dapm_routes,
   ARRAY_SIZE(wm8985_aux_dapm_routes));
  break;
 }

 return 0;
}
