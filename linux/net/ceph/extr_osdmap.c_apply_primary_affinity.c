
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_pg_pool_info {int dummy; } ;
struct ceph_osds {int size; int* osds; int primary; } ;
struct ceph_osdmap {scalar_t__* osd_primary_affinity; } ;


 scalar_t__ CEPH_OSD_DEFAULT_PRIMARY_AFFINITY ;
 int CEPH_OSD_MAX_PRIMARY_AFFINITY ;
 int CRUSH_HASH_RJENKINS1 ;
 int CRUSH_ITEM_NONE ;
 scalar_t__ ceph_can_shift_osds (struct ceph_pg_pool_info*) ;
 int crush_hash32_2 (int ,int,int) ;

__attribute__((used)) static void apply_primary_affinity(struct ceph_osdmap *osdmap,
       struct ceph_pg_pool_info *pi,
       u32 pps,
       struct ceph_osds *up)
{
 int i;
 int pos = -1;





 if (!osdmap->osd_primary_affinity)
  return;

 for (i = 0; i < up->size; i++) {
  int osd = up->osds[i];

  if (osd != CRUSH_ITEM_NONE &&
      osdmap->osd_primary_affinity[osd] !=
     CEPH_OSD_DEFAULT_PRIMARY_AFFINITY) {
   break;
  }
 }
 if (i == up->size)
  return;






 for (i = 0; i < up->size; i++) {
  int osd = up->osds[i];
  u32 aff;

  if (osd == CRUSH_ITEM_NONE)
   continue;

  aff = osdmap->osd_primary_affinity[osd];
  if (aff < CEPH_OSD_MAX_PRIMARY_AFFINITY &&
      (crush_hash32_2(CRUSH_HASH_RJENKINS1,
        pps, osd) >> 16) >= aff) {





   if (pos < 0)
    pos = i;
  } else {
   pos = i;
   break;
  }
 }
 if (pos < 0)
  return;

 up->primary = up->osds[pos];

 if (ceph_can_shift_osds(pi) && pos > 0) {

  for (i = pos; i > 0; i--)
   up->osds[i] = up->osds[i - 1];
  up->osds[0] = up->primary;
 }
}
