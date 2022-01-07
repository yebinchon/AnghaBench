
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_jack ) (struct snd_soc_component*,struct snd_soc_jack*,void*) ;} ;


 int ENOTSUPP ;
 int stub1 (struct snd_soc_component*,struct snd_soc_jack*,void*) ;

int snd_soc_component_set_jack(struct snd_soc_component *component,
          struct snd_soc_jack *jack, void *data)
{
 if (component->driver->set_jack)
  return component->driver->set_jack(component, jack, data);

 return -ENOTSUPP;
}
