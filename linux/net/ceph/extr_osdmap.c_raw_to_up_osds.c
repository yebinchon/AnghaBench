
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pg_pool_info {int dummy; } ;
struct ceph_osds {int primary; int size; int* osds; } ;
struct ceph_osdmap {int dummy; } ;


 int BUG_ON (int) ;
 int CRUSH_ITEM_NONE ;
 scalar_t__ ceph_can_shift_osds (struct ceph_pg_pool_info*) ;
 scalar_t__ ceph_osd_is_down (struct ceph_osdmap*,int) ;

__attribute__((used)) static void raw_to_up_osds(struct ceph_osdmap *osdmap,
      struct ceph_pg_pool_info *pi,
      struct ceph_osds *set)
{
 int i;


 BUG_ON(set->primary != -1);

 if (ceph_can_shift_osds(pi)) {
  int removed = 0;


  for (i = 0; i < set->size; i++) {
   if (ceph_osd_is_down(osdmap, set->osds[i])) {
    removed++;
    continue;
   }
   if (removed)
    set->osds[i - removed] = set->osds[i];
  }
  set->size -= removed;
  if (set->size > 0)
   set->primary = set->osds[0];
 } else {

  for (i = set->size - 1; i >= 0; i--) {
   if (ceph_osd_is_down(osdmap, set->osds[i]))
    set->osds[i] = CRUSH_ITEM_NONE;
   else
    set->primary = set->osds[i];
  }
 }
}
