
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* wm8996_polarity_fn ) (struct snd_soc_component*,int ) ;
struct wm8996_priv {int detecting; int (* polarity_cb ) (struct snd_soc_component*,int ) ;scalar_t__ jack_flips; struct snd_soc_jack* jack; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int WM8996_HP_DONE_EINT ;
 int WM8996_IM_MICD_EINT ;
 int WM8996_INTERRUPT_STATUS_2_MASK ;
 int WM8996_MICB1_DISCH ;
 int WM8996_MICB2_DISCH ;
 int WM8996_MICBIAS_1 ;
 int WM8996_MICBIAS_2 ;
 int WM8996_MICD_ENA ;
 int WM8996_MICD_RATE_MASK ;
 int WM8996_MIC_DETECT_1 ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_dapm_force_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int stub1 (struct snd_soc_component*,int ) ;

int wm8996_detect(struct snd_soc_component *component, struct snd_soc_jack *jack,
    wm8996_polarity_fn polarity_cb)
{
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 wm8996->jack = jack;
 wm8996->detecting = 1;
 wm8996->polarity_cb = polarity_cb;
 wm8996->jack_flips = 0;

 if (wm8996->polarity_cb)
  wm8996->polarity_cb(component, 0);


 snd_soc_component_update_bits(component, WM8996_MICBIAS_1,
       WM8996_MICB1_DISCH, 0);
 snd_soc_component_update_bits(component, WM8996_MICBIAS_2,
       WM8996_MICB2_DISCH, 0);


 snd_soc_dapm_mutex_lock(dapm);

 snd_soc_dapm_force_enable_pin_unlocked(dapm, "LDO2");
 snd_soc_dapm_force_enable_pin_unlocked(dapm, "SYSCLK");

 snd_soc_dapm_mutex_unlock(dapm);




 snd_soc_component_update_bits(component, WM8996_MIC_DETECT_1,
       WM8996_MICD_ENA, WM8996_MICD_ENA);


 snd_soc_component_update_bits(component, WM8996_MIC_DETECT_1,
       WM8996_MICD_RATE_MASK,
       WM8996_MICD_RATE_MASK);


 snd_soc_component_update_bits(component, WM8996_INTERRUPT_STATUS_2_MASK,
       WM8996_IM_MICD_EINT | WM8996_HP_DONE_EINT, 0);

 return 0;
}
