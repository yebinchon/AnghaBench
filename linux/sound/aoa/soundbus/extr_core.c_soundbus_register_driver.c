
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int name; } ;
struct soundbus_driver {TYPE_1__ driver; int name; } ;


 int driver_register (TYPE_1__*) ;
 int soundbus_bus_type ;

int soundbus_register_driver(struct soundbus_driver *drv)
{

 drv->driver.name = drv->name;
 drv->driver.bus = &soundbus_bus_type;


 return driver_register(&drv->driver);
}
