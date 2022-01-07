
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_osdmap {int max_osd; int * osd_primary_affinity; } ;


 int BUG_ON (int) ;
 int CEPH_OSD_DEFAULT_PRIMARY_AFFINITY ;

u32 ceph_get_primary_affinity(struct ceph_osdmap *map, int osd)
{
 BUG_ON(osd >= map->max_osd);

 if (!map->osd_primary_affinity)
  return CEPH_OSD_DEFAULT_PRIMARY_AFFINITY;

 return map->osd_primary_affinity[osd];
}
