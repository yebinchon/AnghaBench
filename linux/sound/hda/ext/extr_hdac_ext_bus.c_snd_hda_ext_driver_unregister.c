
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_driver {int driver; } ;


 int driver_unregister (int *) ;

void snd_hda_ext_driver_unregister(struct hdac_driver *drv)
{
 driver_unregister(&drv->driver);
}
