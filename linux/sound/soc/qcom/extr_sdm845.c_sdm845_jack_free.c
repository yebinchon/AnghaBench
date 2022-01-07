
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_jack {struct snd_soc_component* private_data; } ;


 int snd_soc_component_set_jack (struct snd_soc_component*,int *,int *) ;

__attribute__((used)) static void sdm845_jack_free(struct snd_jack *jack)
{
 struct snd_soc_component *component = jack->private_data;

 snd_soc_component_set_jack(component, ((void*)0), ((void*)0));
}
