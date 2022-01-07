
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int devtype; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int ARRAY_SIZE (int ) ;


 int adc_intercon ;
 int core_intercon ;
 int dac_intercon ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int wm8904_adc_dapm_widgets ;
 int wm8904_adc_snd_controls ;
 int wm8904_core_dapm_widgets ;
 int wm8904_dac_dapm_widgets ;
 int wm8904_dac_snd_controls ;
 int wm8904_dapm_widgets ;
 int wm8904_intercon ;
 int wm8904_snd_controls ;
 int wm8912_intercon ;

__attribute__((used)) static int wm8904_add_widgets(struct snd_soc_component *component)
{
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 snd_soc_dapm_new_controls(dapm, wm8904_core_dapm_widgets,
      ARRAY_SIZE(wm8904_core_dapm_widgets));
 snd_soc_dapm_add_routes(dapm, core_intercon,
    ARRAY_SIZE(core_intercon));

 switch (wm8904->devtype) {
 case 129:
  snd_soc_add_component_controls(component, wm8904_adc_snd_controls,
         ARRAY_SIZE(wm8904_adc_snd_controls));
  snd_soc_add_component_controls(component, wm8904_dac_snd_controls,
         ARRAY_SIZE(wm8904_dac_snd_controls));
  snd_soc_add_component_controls(component, wm8904_snd_controls,
         ARRAY_SIZE(wm8904_snd_controls));

  snd_soc_dapm_new_controls(dapm, wm8904_adc_dapm_widgets,
       ARRAY_SIZE(wm8904_adc_dapm_widgets));
  snd_soc_dapm_new_controls(dapm, wm8904_dac_dapm_widgets,
       ARRAY_SIZE(wm8904_dac_dapm_widgets));
  snd_soc_dapm_new_controls(dapm, wm8904_dapm_widgets,
       ARRAY_SIZE(wm8904_dapm_widgets));

  snd_soc_dapm_add_routes(dapm, adc_intercon,
     ARRAY_SIZE(adc_intercon));
  snd_soc_dapm_add_routes(dapm, dac_intercon,
     ARRAY_SIZE(dac_intercon));
  snd_soc_dapm_add_routes(dapm, wm8904_intercon,
     ARRAY_SIZE(wm8904_intercon));
  break;

 case 128:
  snd_soc_add_component_controls(component, wm8904_dac_snd_controls,
         ARRAY_SIZE(wm8904_dac_snd_controls));

  snd_soc_dapm_new_controls(dapm, wm8904_dac_dapm_widgets,
       ARRAY_SIZE(wm8904_dac_dapm_widgets));

  snd_soc_dapm_add_routes(dapm, dac_intercon,
     ARRAY_SIZE(dac_intercon));
  snd_soc_dapm_add_routes(dapm, wm8912_intercon,
     ARRAY_SIZE(wm8912_intercon));
  break;
 }

 return 0;
}
