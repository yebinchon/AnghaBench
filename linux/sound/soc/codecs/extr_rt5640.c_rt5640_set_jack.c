
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int rt5640_disable_jack_detect (struct snd_soc_component*) ;
 int rt5640_enable_jack_detect (struct snd_soc_component*,struct snd_soc_jack*) ;

__attribute__((used)) static int rt5640_set_jack(struct snd_soc_component *component,
      struct snd_soc_jack *jack, void *data)
{
 if (jack)
  rt5640_enable_jack_detect(component, jack);
 else
  rt5640_disable_jack_detect(component);

 return 0;
}
