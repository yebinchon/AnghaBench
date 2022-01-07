
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpool {TYPE_1__* driver; } ;
struct TYPE_2__ {int malloc_support_movable; } ;



bool zpool_malloc_support_movable(struct zpool *zpool)
{
 return zpool->driver->malloc_support_movable;
}
