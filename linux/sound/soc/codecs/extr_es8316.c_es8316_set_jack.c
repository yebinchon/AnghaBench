
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int es8316_disable_jack_detect (struct snd_soc_component*) ;
 int es8316_enable_jack_detect (struct snd_soc_component*,struct snd_soc_jack*) ;

__attribute__((used)) static int es8316_set_jack(struct snd_soc_component *component,
      struct snd_soc_jack *jack, void *data)
{
 if (jack)
  es8316_enable_jack_detect(component, jack);
 else
  es8316_disable_jack_detect(component);

 return 0;
}
