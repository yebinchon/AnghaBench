
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpool {int pool; TYPE_1__* driver; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* malloc ) (int ,size_t,int ,unsigned long*) ;} ;


 int stub1 (int ,size_t,int ,unsigned long*) ;

int zpool_malloc(struct zpool *zpool, size_t size, gfp_t gfp,
   unsigned long *handle)
{
 return zpool->driver->malloc(zpool->pool, size, gfp, handle);
}
