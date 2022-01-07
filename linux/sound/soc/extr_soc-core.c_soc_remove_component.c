
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int card; } ;


 int snd_soc_component_remove (struct snd_soc_component*) ;
 int soc_cleanup_component (struct snd_soc_component*) ;

__attribute__((used)) static void soc_remove_component(struct snd_soc_component *component)
{
 if (!component->card)
  return;

 snd_soc_component_remove(component);

 soc_cleanup_component(component);
}
