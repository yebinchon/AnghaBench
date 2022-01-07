
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_pg_pool_info {int dummy; } ;
struct ceph_osdmap {int pg_pools; } ;


 struct ceph_pg_pool_info* __lookup_pg_pool (int *,int ) ;

struct ceph_pg_pool_info *ceph_pg_pool_by_id(struct ceph_osdmap *map, u64 id)
{
 return __lookup_pg_pool(&map->pg_pools, id);
}
