
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zoneref {scalar_t__ zone_idx; int * zone; } ;
struct TYPE_7__ {int node_id; TYPE_1__* node_zonelists; } ;
typedef TYPE_2__ pg_data_t ;
struct TYPE_6__ {struct zoneref* _zonerefs; } ;


 int MAX_NUMNODES ;
 TYPE_2__* NODE_DATA (int) ;
 size_t ZONELIST_FALLBACK ;
 int build_zonerefs_node (TYPE_2__*,struct zoneref*) ;
 int node_online (int) ;

__attribute__((used)) static void build_zonelists(pg_data_t *pgdat)
{
 int node, local_node;
 struct zoneref *zonerefs;
 int nr_zones;

 local_node = pgdat->node_id;

 zonerefs = pgdat->node_zonelists[ZONELIST_FALLBACK]._zonerefs;
 nr_zones = build_zonerefs_node(pgdat, zonerefs);
 zonerefs += nr_zones;
 for (node = local_node + 1; node < MAX_NUMNODES; node++) {
  if (!node_online(node))
   continue;
  nr_zones = build_zonerefs_node(NODE_DATA(node), zonerefs);
  zonerefs += nr_zones;
 }
 for (node = 0; node < local_node; node++) {
  if (!node_online(node))
   continue;
  nr_zones = build_zonerefs_node(NODE_DATA(node), zonerefs);
  zonerefs += nr_zones;
 }

 zonerefs->zone = ((void*)0);
 zonerefs->zone_idx = 0;
}
