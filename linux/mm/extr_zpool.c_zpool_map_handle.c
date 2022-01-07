
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpool {int pool; TYPE_1__* driver; } ;
typedef enum zpool_mapmode { ____Placeholder_zpool_mapmode } zpool_mapmode ;
struct TYPE_2__ {void* (* map ) (int ,unsigned long,int) ;} ;


 void* stub1 (int ,unsigned long,int) ;

void *zpool_map_handle(struct zpool *zpool, unsigned long handle,
   enum zpool_mapmode mapmode)
{
 return zpool->driver->map(zpool->pool, handle, mapmode);
}
