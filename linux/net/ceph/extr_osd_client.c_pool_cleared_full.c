
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_pool_info {scalar_t__ was_full; } ;
struct ceph_osd_client {int osdmap; } ;
typedef int s64 ;


 int __pool_full (struct ceph_pg_pool_info*) ;
 struct ceph_pg_pool_info* ceph_pg_pool_by_id (int ,int ) ;

__attribute__((used)) static bool pool_cleared_full(struct ceph_osd_client *osdc, s64 pool_id)
{
 struct ceph_pg_pool_info *pi;

 pi = ceph_pg_pool_by_id(osdc->osdmap, pool_id);
 if (!pi)
  return 0;

 return pi->was_full && !__pool_full(pi);
}
