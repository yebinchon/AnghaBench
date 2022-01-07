
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpool_driver {int owner; int refcount; } ;


 int atomic_dec (int *) ;
 int module_put (int ) ;

__attribute__((used)) static void zpool_put_driver(struct zpool_driver *driver)
{
 atomic_dec(&driver->refcount);
 module_put(driver->owner);
}
