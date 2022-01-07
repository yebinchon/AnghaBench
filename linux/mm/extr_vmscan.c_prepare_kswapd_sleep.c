
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kswapd_failures; int pfmemalloc_wait; } ;
typedef TYPE_1__ pg_data_t ;


 scalar_t__ MAX_RECLAIM_RETRIES ;
 int clear_pgdat_congested (TYPE_1__*) ;
 scalar_t__ pgdat_balanced (TYPE_1__*,int,int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static bool prepare_kswapd_sleep(pg_data_t *pgdat, int order, int classzone_idx)
{
 if (waitqueue_active(&pgdat->pfmemalloc_wait))
  wake_up_all(&pgdat->pfmemalloc_wait);


 if (pgdat->kswapd_failures >= MAX_RECLAIM_RETRIES)
  return 1;

 if (pgdat_balanced(pgdat, order, classzone_idx)) {
  clear_pgdat_congested(pgdat);
  return 1;
 }

 return 0;
}
