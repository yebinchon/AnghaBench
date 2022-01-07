
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; int** from_to; } ;
struct TYPE_3__ {int len; int* osds; } ;
struct ceph_pg_mapping {TYPE_2__ pg_upmap_items; TYPE_1__ pg_upmap; } ;
struct ceph_pg {int dummy; } ;
struct ceph_osds {int* osds; int size; } ;
struct ceph_osdmap {int max_osd; scalar_t__* osd_weight; int pg_upmap_items; int pg_upmap; } ;


 int CRUSH_ITEM_NONE ;
 struct ceph_pg_mapping* lookup_pg_mapping (int *,struct ceph_pg const*) ;

__attribute__((used)) static void apply_upmap(struct ceph_osdmap *osdmap,
   const struct ceph_pg *pgid,
   struct ceph_osds *raw)
{
 struct ceph_pg_mapping *pg;
 int i, j;

 pg = lookup_pg_mapping(&osdmap->pg_upmap, pgid);
 if (pg) {

  for (i = 0; i < pg->pg_upmap.len; i++) {
   int osd = pg->pg_upmap.osds[i];

   if (osd != CRUSH_ITEM_NONE &&
       osd < osdmap->max_osd &&
       osdmap->osd_weight[osd] == 0) {

    return;
   }
  }
  for (i = 0; i < pg->pg_upmap.len; i++)
   raw->osds[i] = pg->pg_upmap.osds[i];
  raw->size = pg->pg_upmap.len;

 }

 pg = lookup_pg_mapping(&osdmap->pg_upmap_items, pgid);
 if (pg) {




  for (i = 0; i < pg->pg_upmap_items.len; i++) {
   int from = pg->pg_upmap_items.from_to[i][0];
   int to = pg->pg_upmap_items.from_to[i][1];
   int pos = -1;
   bool exists = 0;


   for (j = 0; j < raw->size; j++) {
    int osd = raw->osds[j];

    if (osd == to) {
     exists = 1;
     break;
    }

    if (osd == from && pos < 0 &&
        !(to != CRUSH_ITEM_NONE &&
          to < osdmap->max_osd &&
          osdmap->osd_weight[to] == 0)) {
     pos = j;
    }
   }
   if (!exists && pos >= 0)
    raw->osds[pos] = to;
  }
 }
}
