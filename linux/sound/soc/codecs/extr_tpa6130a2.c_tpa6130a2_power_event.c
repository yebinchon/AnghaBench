
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpa6130a2_data {int dummy; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 struct tpa6130a2_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int tpa6130a2_power (struct tpa6130a2_data*,int) ;

__attribute__((used)) static int tpa6130a2_power_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kctrl, int event)
{
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct tpa6130a2_data *data = snd_soc_component_get_drvdata(c);

 if (SND_SOC_DAPM_EVENT_ON(event)) {

  return tpa6130a2_power(data, 1);
 } else {

  return tpa6130a2_power(data, 0);
 }
}
