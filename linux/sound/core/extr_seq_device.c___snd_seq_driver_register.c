
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct module* owner; int * bus; int name; } ;
struct snd_seq_driver {TYPE_1__ driver; int id; } ;
struct module {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int driver_register (TYPE_1__*) ;
 int snd_seq_bus_type ;

int __snd_seq_driver_register(struct snd_seq_driver *drv, struct module *mod)
{
 if (WARN_ON(!drv->driver.name || !drv->id))
  return -EINVAL;
 drv->driver.bus = &snd_seq_bus_type;
 drv->driver.owner = mod;
 return driver_register(&drv->driver);
}
