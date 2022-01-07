
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_pool_info {int dummy; } ;
struct ceph_osds {int size; int * osds; } ;
struct ceph_osdmap {int dummy; } ;


 int CRUSH_ITEM_NONE ;
 scalar_t__ ceph_can_shift_osds (struct ceph_pg_pool_info*) ;
 int ceph_osd_exists (struct ceph_osdmap*,int ) ;

__attribute__((used)) static void remove_nonexistent_osds(struct ceph_osdmap *osdmap,
        struct ceph_pg_pool_info *pi,
        struct ceph_osds *set)
{
 int i;

 if (ceph_can_shift_osds(pi)) {
  int removed = 0;


  for (i = 0; i < set->size; i++) {
   if (!ceph_osd_exists(osdmap, set->osds[i])) {
    removed++;
    continue;
   }
   if (removed)
    set->osds[i - removed] = set->osds[i];
  }
  set->size -= removed;
 } else {

  for (i = 0; i < set->size; i++) {
   if (!ceph_osd_exists(osdmap, set->osds[i]))
    set->osds[i] = CRUSH_ITEM_NONE;
  }
 }
}
