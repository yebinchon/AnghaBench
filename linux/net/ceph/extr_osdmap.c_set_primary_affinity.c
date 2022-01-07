
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ceph_osdmap {int max_osd; int * osd_primary_affinity; } ;


 int BUG_ON (int) ;
 int CEPH_OSD_DEFAULT_PRIMARY_AFFINITY ;
 int ENOMEM ;
 int GFP_NOFS ;
 int array_size (int,int) ;
 int * ceph_kvmalloc (int ,int ) ;

__attribute__((used)) static int set_primary_affinity(struct ceph_osdmap *map, int osd, u32 aff)
{
 BUG_ON(osd >= map->max_osd);

 if (!map->osd_primary_affinity) {
  int i;

  map->osd_primary_affinity = ceph_kvmalloc(
      array_size(map->max_osd, sizeof(*map->osd_primary_affinity)),
      GFP_NOFS);
  if (!map->osd_primary_affinity)
   return -ENOMEM;

  for (i = 0; i < map->max_osd; i++)
   map->osd_primary_affinity[i] =
       CEPH_OSD_DEFAULT_PRIMARY_AFFINITY;
 }

 map->osd_primary_affinity[osd] = aff;

 return 0;
}
