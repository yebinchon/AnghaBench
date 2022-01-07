
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int name; } ;


 int kfree (int ) ;
 int snd_soc_unregister_dais (struct snd_soc_component*) ;

__attribute__((used)) static void snd_soc_component_cleanup(struct snd_soc_component *component)
{
 snd_soc_unregister_dais(component);
 kfree(component->name);
}
