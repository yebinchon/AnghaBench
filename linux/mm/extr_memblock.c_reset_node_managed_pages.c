
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zone {int managed_pages; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef TYPE_1__ pg_data_t ;


 int MAX_NR_ZONES ;
 int atomic_long_set (int *,int ) ;

void reset_node_managed_pages(pg_data_t *pgdat)
{
 struct zone *z;

 for (z = pgdat->node_zones; z < pgdat->node_zones + MAX_NR_ZONES; z++)
  atomic_long_set(&z->managed_pages, 0);
}
