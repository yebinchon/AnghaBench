
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct pcm3008_setup_data {int pdda_pin; } ;
struct TYPE_2__ {struct pcm3008_setup_data* platform_data; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_set_value_cansleep (int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int pcm3008_dac_ev(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol,
     int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct pcm3008_setup_data *setup = component->dev->platform_data;

 gpio_set_value_cansleep(setup->pdda_pin,
    SND_SOC_DAPM_EVENT_ON(event));

 return 0;
}
