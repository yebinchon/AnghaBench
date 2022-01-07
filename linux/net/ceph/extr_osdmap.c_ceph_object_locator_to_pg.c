
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_pool_info {int dummy; } ;
struct ceph_pg {int dummy; } ;
struct ceph_osdmap {int dummy; } ;
struct ceph_object_locator {int pool; } ;
struct ceph_object_id {int dummy; } ;


 int ENOENT ;
 int __ceph_object_locator_to_pg (struct ceph_pg_pool_info*,struct ceph_object_id const*,struct ceph_object_locator const*,struct ceph_pg*) ;
 struct ceph_pg_pool_info* ceph_pg_pool_by_id (struct ceph_osdmap*,int ) ;

int ceph_object_locator_to_pg(struct ceph_osdmap *osdmap,
         const struct ceph_object_id *oid,
         const struct ceph_object_locator *oloc,
         struct ceph_pg *raw_pgid)
{
 struct ceph_pg_pool_info *pi;

 pi = ceph_pg_pool_by_id(osdmap, oloc->pool);
 if (!pi)
  return -ENOENT;

 __ceph_object_locator_to_pg(pi, oid, oloc, raw_pgid);
 return 0;
}
