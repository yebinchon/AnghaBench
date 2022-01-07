
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct ac97_codec_driver {TYPE_1__ driver; } ;


 int ac97_bus_type ;
 int driver_register (TYPE_1__*) ;

int snd_ac97_codec_driver_register(struct ac97_codec_driver *drv)
{
 drv->driver.bus = &ac97_bus_type;
 return driver_register(&drv->driver);
}
