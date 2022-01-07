
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {TYPE_3__* dev; TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {int owner; } ;
struct TYPE_4__ {int module_get_upon_open; } ;


 int module_put (int ) ;

void snd_soc_component_module_put(struct snd_soc_component *component,
      int upon_open)
{
 if (component->driver->module_get_upon_open == !!upon_open)
  module_put(component->dev->driver->owner);
}
