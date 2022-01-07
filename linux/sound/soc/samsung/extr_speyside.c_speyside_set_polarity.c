
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int WM8996_HPSEL_GPIO ;
 int gpio_direction_output (int ,int) ;
 int snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_sync (int ) ;
 int speyside_jack_polarity ;

__attribute__((used)) static void speyside_set_polarity(struct snd_soc_component *component,
      int polarity)
{
 speyside_jack_polarity = !polarity;
 gpio_direction_output(WM8996_HPSEL_GPIO, speyside_jack_polarity);


 snd_soc_dapm_sync(snd_soc_component_get_dapm(component));
}
