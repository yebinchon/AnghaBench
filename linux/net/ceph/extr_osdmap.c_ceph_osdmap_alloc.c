
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osdmap {int pool_max; int crush_workspace_mutex; void* pg_upmap_items; void* pg_upmap; void* primary_temp; void* pg_temp; void* pg_pools; } ;


 int GFP_NOIO ;
 void* RB_ROOT ;
 struct ceph_osdmap* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct ceph_osdmap *ceph_osdmap_alloc(void)
{
 struct ceph_osdmap *map;

 map = kzalloc(sizeof(*map), GFP_NOIO);
 if (!map)
  return ((void*)0);

 map->pg_pools = RB_ROOT;
 map->pool_max = -1;
 map->pg_temp = RB_ROOT;
 map->primary_temp = RB_ROOT;
 map->pg_upmap = RB_ROOT;
 map->pg_upmap_items = RB_ROOT;
 mutex_init(&map->crush_workspace_mutex);

 return map;
}
