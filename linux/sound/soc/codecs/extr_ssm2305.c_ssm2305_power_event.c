
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2305 {int gpiod_shutdown; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 struct ssm2305* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int ssm2305_power_event(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kctrl, int event)
{
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct ssm2305 *data = snd_soc_component_get_drvdata(c);

 gpiod_set_value_cansleep(data->gpiod_shutdown,
     SND_SOC_DAPM_EVENT_ON(event));

 return 0;
}
