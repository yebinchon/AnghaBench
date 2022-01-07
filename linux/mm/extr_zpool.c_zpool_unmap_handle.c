
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpool {int pool; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* unmap ) (int ,unsigned long) ;} ;


 int stub1 (int ,unsigned long) ;

void zpool_unmap_handle(struct zpool *zpool, unsigned long handle)
{
 zpool->driver->unmap(zpool->pool, handle);
}
