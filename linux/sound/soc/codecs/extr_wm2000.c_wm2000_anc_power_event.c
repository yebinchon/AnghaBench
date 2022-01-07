
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2000_priv {int anc_eng_ena; int lock; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_OFF (int) ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 struct wm2000_priv* dev_get_drvdata (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm2000_anc_set_mode (struct wm2000_priv*) ;

__attribute__((used)) static int wm2000_anc_power_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm2000_priv *wm2000 = dev_get_drvdata(component->dev);
 int ret;

 mutex_lock(&wm2000->lock);

 if (SND_SOC_DAPM_EVENT_ON(event))
  wm2000->anc_eng_ena = 1;

 if (SND_SOC_DAPM_EVENT_OFF(event))
  wm2000->anc_eng_ena = 0;

 ret = wm2000_anc_set_mode(wm2000);

 mutex_unlock(&wm2000->lock);

 return ret;
}
