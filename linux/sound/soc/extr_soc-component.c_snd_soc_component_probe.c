
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* probe ) (struct snd_soc_component*) ;} ;


 int stub1 (struct snd_soc_component*) ;

int snd_soc_component_probe(struct snd_soc_component *component)
{
 if (component->driver->probe)
  return component->driver->probe(component);

 return 0;
}
