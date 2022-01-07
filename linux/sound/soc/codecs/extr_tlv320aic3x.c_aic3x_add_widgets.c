
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct aic3x_priv {int model; } ;






 int ARRAY_SIZE (int ) ;
 int aic3007_dapm_widgets ;
 int aic3104_extra_dapm_widgets ;
 int aic3x_dapm_mono_widgets ;
 int aic3x_extra_dapm_widgets ;
 int intercon_3007 ;
 int intercon_extra ;
 int intercon_extra_3104 ;
 int intercon_mono ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct aic3x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int aic3x_add_widgets(struct snd_soc_component *component)
{
 struct aic3x_priv *aic3x = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 switch (aic3x->model) {
 case 128:
 case 129:
  snd_soc_dapm_new_controls(dapm, aic3x_extra_dapm_widgets,
       ARRAY_SIZE(aic3x_extra_dapm_widgets));
  snd_soc_dapm_add_routes(dapm, intercon_extra,
     ARRAY_SIZE(intercon_extra));
  snd_soc_dapm_new_controls(dapm, aic3x_dapm_mono_widgets,
   ARRAY_SIZE(aic3x_dapm_mono_widgets));
  snd_soc_dapm_add_routes(dapm, intercon_mono,
     ARRAY_SIZE(intercon_mono));
  break;
 case 131:
  snd_soc_dapm_new_controls(dapm, aic3x_extra_dapm_widgets,
       ARRAY_SIZE(aic3x_extra_dapm_widgets));
  snd_soc_dapm_add_routes(dapm, intercon_extra,
     ARRAY_SIZE(intercon_extra));
  snd_soc_dapm_new_controls(dapm, aic3007_dapm_widgets,
   ARRAY_SIZE(aic3007_dapm_widgets));
  snd_soc_dapm_add_routes(dapm, intercon_3007,
     ARRAY_SIZE(intercon_3007));
  break;
 case 130:
  snd_soc_dapm_new_controls(dapm, aic3104_extra_dapm_widgets,
    ARRAY_SIZE(aic3104_extra_dapm_widgets));
  snd_soc_dapm_add_routes(dapm, intercon_extra_3104,
    ARRAY_SIZE(intercon_extra_3104));
  break;
 }

 return 0;
}
