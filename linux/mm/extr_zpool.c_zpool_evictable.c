
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpool {int evictable; } ;



bool zpool_evictable(struct zpool *zpool)
{
 return zpool->evictable;
}
