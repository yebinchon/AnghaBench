
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct zpool {int pool; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* total_size ) (int ) ;} ;


 int stub1 (int ) ;

u64 zpool_get_total_size(struct zpool *zpool)
{
 return zpool->driver->total_size(zpool->pool);
}
