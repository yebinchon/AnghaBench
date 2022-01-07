
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int rt5651_disable_jack_detect (struct snd_soc_component*) ;
 int rt5651_enable_jack_detect (struct snd_soc_component*,struct snd_soc_jack*,void*) ;

__attribute__((used)) static int rt5651_set_jack(struct snd_soc_component *component,
      struct snd_soc_jack *jack, void *data)
{
 if (jack)
  rt5651_enable_jack_detect(component, jack, data);
 else
  rt5651_disable_jack_detect(component);

 return 0;
}
