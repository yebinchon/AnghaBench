
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int * card; int card_list; } ;


 int list_del_init (int *) ;
 int snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_component_module_put_when_remove (struct snd_soc_component*) ;
 int snd_soc_component_set_jack (struct snd_soc_component*,int *,int *) ;
 int snd_soc_dapm_free (int ) ;
 int soc_cleanup_component_debugfs (struct snd_soc_component*) ;

__attribute__((used)) static void soc_cleanup_component(struct snd_soc_component *component)
{

 snd_soc_component_set_jack(component, ((void*)0), ((void*)0));

 list_del_init(&component->card_list);
 snd_soc_dapm_free(snd_soc_component_get_dapm(component));
 soc_cleanup_component_debugfs(component);
 component->card = ((void*)0);
 snd_soc_component_module_put_when_remove(component);
}
