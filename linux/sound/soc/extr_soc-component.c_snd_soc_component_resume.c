
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {scalar_t__ suspended; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* resume ) (struct snd_soc_component*) ;} ;


 int stub1 (struct snd_soc_component*) ;

void snd_soc_component_resume(struct snd_soc_component *component)
{
 if (component->driver->resume)
  component->driver->resume(component);
 component->suspended = 0;
}
