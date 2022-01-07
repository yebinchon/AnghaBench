
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* driver; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int (* of_xlate_dai_id ) (struct snd_soc_component*,struct device_node*) ;} ;


 int ENOTSUPP ;
 int stub1 (struct snd_soc_component*,struct device_node*) ;

int snd_soc_component_of_xlate_dai_id(struct snd_soc_component *component,
          struct device_node *ep)
{
 if (component->driver->of_xlate_dai_id)
  return component->driver->of_xlate_dai_id(component, ep);

 return -ENOTSUPP;
}
