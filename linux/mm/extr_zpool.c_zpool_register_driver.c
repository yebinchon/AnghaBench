
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpool_driver {int list; int refcount; } ;


 int atomic_set (int *,int ) ;
 int drivers_head ;
 int drivers_lock ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void zpool_register_driver(struct zpool_driver *driver)
{
 spin_lock(&drivers_lock);
 atomic_set(&driver->refcount, 0);
 list_add(&driver->list, &drivers_head);
 spin_unlock(&drivers_lock);
}
