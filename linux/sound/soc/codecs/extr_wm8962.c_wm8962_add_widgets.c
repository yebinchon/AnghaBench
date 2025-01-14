
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_pdata {scalar_t__ spk_mono; } ;
struct wm8962_priv {struct wm8962_pdata pdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int wm8962_dapm_spk_mono_widgets ;
 int wm8962_dapm_spk_stereo_widgets ;
 int wm8962_dapm_widgets ;
 int wm8962_intercon ;
 int wm8962_snd_controls ;
 int wm8962_spk_mono_controls ;
 int wm8962_spk_mono_intercon ;
 int wm8962_spk_stereo_controls ;
 int wm8962_spk_stereo_intercon ;

__attribute__((used)) static int wm8962_add_widgets(struct snd_soc_component *component)
{
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);
 struct wm8962_pdata *pdata = &wm8962->pdata;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 snd_soc_add_component_controls(component, wm8962_snd_controls,
        ARRAY_SIZE(wm8962_snd_controls));
 if (pdata->spk_mono)
  snd_soc_add_component_controls(component, wm8962_spk_mono_controls,
         ARRAY_SIZE(wm8962_spk_mono_controls));
 else
  snd_soc_add_component_controls(component, wm8962_spk_stereo_controls,
         ARRAY_SIZE(wm8962_spk_stereo_controls));


 snd_soc_dapm_new_controls(dapm, wm8962_dapm_widgets,
      ARRAY_SIZE(wm8962_dapm_widgets));
 if (pdata->spk_mono)
  snd_soc_dapm_new_controls(dapm, wm8962_dapm_spk_mono_widgets,
       ARRAY_SIZE(wm8962_dapm_spk_mono_widgets));
 else
  snd_soc_dapm_new_controls(dapm, wm8962_dapm_spk_stereo_widgets,
       ARRAY_SIZE(wm8962_dapm_spk_stereo_widgets));

 snd_soc_dapm_add_routes(dapm, wm8962_intercon,
    ARRAY_SIZE(wm8962_intercon));
 if (pdata->spk_mono)
  snd_soc_dapm_add_routes(dapm, wm8962_spk_mono_intercon,
     ARRAY_SIZE(wm8962_spk_mono_intercon));
 else
  snd_soc_dapm_add_routes(dapm, wm8962_spk_stereo_intercon,
     ARRAY_SIZE(wm8962_spk_stereo_intercon));


 snd_soc_dapm_disable_pin(dapm, "Beep");

 return 0;
}
