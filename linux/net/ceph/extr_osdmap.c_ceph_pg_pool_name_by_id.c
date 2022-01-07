
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ceph_pg_pool_info {char const* name; } ;
struct ceph_osdmap {int pg_pools; } ;


 scalar_t__ CEPH_NOPOOL ;
 scalar_t__ INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct ceph_pg_pool_info* __lookup_pg_pool (int *,int) ;

const char *ceph_pg_pool_name_by_id(struct ceph_osdmap *map, u64 id)
{
 struct ceph_pg_pool_info *pi;

 if (id == CEPH_NOPOOL)
  return ((void*)0);

 if (WARN_ON_ONCE(id > (u64) INT_MAX))
  return ((void*)0);

 pi = __lookup_pg_pool(&map->pg_pools, (int) id);

 return pi ? pi->name : ((void*)0);
}
