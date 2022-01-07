
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int suspended; } ;



int snd_soc_component_is_suspended(struct snd_soc_component *component)
{
 return component->suspended;
}
