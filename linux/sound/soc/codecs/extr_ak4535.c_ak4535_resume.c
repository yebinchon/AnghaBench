
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int snd_soc_component_cache_sync (struct snd_soc_component*) ;

__attribute__((used)) static int ak4535_resume(struct snd_soc_component *component)
{
 snd_soc_component_cache_sync(component);
 return 0;
}
