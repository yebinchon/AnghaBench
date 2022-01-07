
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int hs_power_mode_locked; int hs_power_mode; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int headset_power_mode (struct snd_soc_component*,int) ;
 int msleep (int) ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int twl6040_ep_drv_event(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);
 int ret = 0;

 if (SND_SOC_DAPM_EVENT_ON(event)) {

  priv->hs_power_mode_locked = 1;
  ret = headset_power_mode(component, 1);
 } else {
  priv->hs_power_mode_locked = 0;
  ret = headset_power_mode(component, priv->hs_power_mode);
 }

 msleep(1);

 return ret;
}
