
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm5100_priv {int jack_detecting; struct snd_soc_jack* jack; scalar_t__ jack_flips; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int WM5100_ACCDET_BIAS_STARTTIME_MASK ;
 int WM5100_ACCDET_BIAS_STARTTIME_SHIFT ;
 int WM5100_ACCDET_ENA ;
 int WM5100_ACCDET_RATE_MASK ;
 int WM5100_IM_ACCDET_EINT ;
 int WM5100_IM_HPDET_EINT ;
 int WM5100_INTERRUPT_STATUS_3_MASK ;
 int WM5100_MIC_DETECT_1 ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm5100_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_dapm_force_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;
 int wm5100_set_detect_mode (struct wm5100_priv*,int ) ;

int wm5100_detect(struct snd_soc_component *component, struct snd_soc_jack *jack)
{
 struct wm5100_priv *wm5100 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 if (jack) {
  wm5100->jack = jack;
  wm5100->jack_detecting = 1;
  wm5100->jack_flips = 0;

  wm5100_set_detect_mode(wm5100, 0);



  snd_soc_component_update_bits(component, WM5100_MIC_DETECT_1,
        WM5100_ACCDET_BIAS_STARTTIME_MASK |
        WM5100_ACCDET_RATE_MASK,
        (7 << WM5100_ACCDET_BIAS_STARTTIME_SHIFT) |
        WM5100_ACCDET_RATE_MASK);


  snd_soc_dapm_mutex_lock(dapm);

  snd_soc_dapm_force_enable_pin_unlocked(dapm, "CP2");
  snd_soc_dapm_force_enable_pin_unlocked(dapm, "SYSCLK");

  snd_soc_dapm_sync_unlocked(dapm);

  snd_soc_dapm_mutex_unlock(dapm);




  snd_soc_component_update_bits(component, WM5100_MIC_DETECT_1,
        WM5100_ACCDET_ENA, WM5100_ACCDET_ENA);

  snd_soc_component_update_bits(component, WM5100_INTERRUPT_STATUS_3_MASK,
        WM5100_IM_ACCDET_EINT, 0);
 } else {
  snd_soc_component_update_bits(component, WM5100_INTERRUPT_STATUS_3_MASK,
        WM5100_IM_HPDET_EINT |
        WM5100_IM_ACCDET_EINT,
        WM5100_IM_HPDET_EINT |
        WM5100_IM_ACCDET_EINT);
  snd_soc_component_update_bits(component, WM5100_MIC_DETECT_1,
        WM5100_ACCDET_ENA, 0);
  wm5100->jack = ((void*)0);
 }

 return 0;
}
