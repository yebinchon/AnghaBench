
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {scalar_t__ present_pages; } ;
struct TYPE_3__ {scalar_t__ node_present_pages; struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 int MAX_NR_ZONES ;

__attribute__((used)) static void reset_node_present_pages(pg_data_t *pgdat)
{
 struct zone *z;

 for (z = pgdat->node_zones; z < pgdat->node_zones + MAX_NR_ZONES; z++)
  z->present_pages = 0;

 pgdat->node_present_pages = 0;
}
