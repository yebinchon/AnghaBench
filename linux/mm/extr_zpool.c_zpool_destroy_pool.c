
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpool {TYPE_1__* driver; int pool; int list; } ;
struct TYPE_2__ {int (* destroy ) (int ) ;int type; } ;


 int kfree (struct zpool*) ;
 int list_del (int *) ;
 int pools_lock ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int ) ;
 int zpool_put_driver (TYPE_1__*) ;

void zpool_destroy_pool(struct zpool *zpool)
{
 pr_debug("destroying pool type %s\n", zpool->driver->type);

 spin_lock(&pools_lock);
 list_del(&zpool->list);
 spin_unlock(&pools_lock);
 zpool->driver->destroy(zpool->pool);
 zpool_put_driver(zpool->driver);
 kfree(zpool);
}
