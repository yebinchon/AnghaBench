
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_pool_info {int dummy; } ;
struct ceph_pg {int pool; } ;
struct ceph_osds {int primary; } ;
struct ceph_osdmap {int dummy; } ;


 struct ceph_pg_pool_info* ceph_pg_pool_by_id (struct ceph_osdmap*,int ) ;
 int ceph_pg_to_up_acting_osds (struct ceph_osdmap*,struct ceph_pg_pool_info*,struct ceph_pg const*,struct ceph_osds*,struct ceph_osds*) ;

int ceph_pg_to_acting_primary(struct ceph_osdmap *osdmap,
         const struct ceph_pg *raw_pgid)
{
 struct ceph_pg_pool_info *pi;
 struct ceph_osds up, acting;

 pi = ceph_pg_pool_by_id(osdmap, raw_pgid->pool);
 if (!pi)
  return -1;

 ceph_pg_to_up_acting_osds(osdmap, pi, raw_pgid, &up, &acting);
 return acting.primary;
}
