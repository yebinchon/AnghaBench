
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpool_driver {int list; int refcount; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 int atomic_read (int *) ;
 int drivers_lock ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int zpool_unregister_driver(struct zpool_driver *driver)
{
 int ret = 0, refcount;

 spin_lock(&drivers_lock);
 refcount = atomic_read(&driver->refcount);
 WARN_ON(refcount < 0);
 if (refcount > 0)
  ret = -EBUSY;
 else
  list_del(&driver->list);
 spin_unlock(&drivers_lock);

 return ret;
}
