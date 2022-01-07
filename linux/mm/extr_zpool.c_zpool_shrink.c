
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpool {int pool; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* shrink ) (int ,unsigned int,unsigned int*) ;} ;


 int EINVAL ;
 int stub1 (int ,unsigned int,unsigned int*) ;

int zpool_shrink(struct zpool *zpool, unsigned int pages,
   unsigned int *reclaimed)
{
 return zpool->driver->shrink ?
        zpool->driver->shrink(zpool->pool, pages, reclaimed) : -EINVAL;
}
