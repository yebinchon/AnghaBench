
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; int * bus; } ;
struct hdac_driver {TYPE_1__ driver; scalar_t__ shutdown; scalar_t__ remove; scalar_t__ probe; int type; } ;


 int HDA_DEV_ASOC ;
 int driver_register (TYPE_1__*) ;
 int hda_ext_drv_probe ;
 int hdac_ext_drv_remove ;
 int hdac_ext_drv_shutdown ;
 int snd_hda_bus_type ;

int snd_hda_ext_driver_register(struct hdac_driver *drv)
{
 drv->type = HDA_DEV_ASOC;
 drv->driver.bus = &snd_hda_bus_type;


 if (drv->probe)
  drv->driver.probe = hda_ext_drv_probe;
 if (drv->remove)
  drv->driver.remove = hdac_ext_drv_remove;
 if (drv->shutdown)
  drv->driver.shutdown = hdac_ext_drv_shutdown;

 return driver_register(&drv->driver);
}
