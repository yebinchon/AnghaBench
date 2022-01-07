
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kswapd_classzone_idx; } ;
typedef TYPE_1__ pg_data_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 scalar_t__ MAX_NR_ZONES ;

__attribute__((used)) static enum zone_type kswapd_classzone_idx(pg_data_t *pgdat,
        enum zone_type prev_classzone_idx)
{
 if (pgdat->kswapd_classzone_idx == MAX_NR_ZONES)
  return prev_classzone_idx;
 return pgdat->kswapd_classzone_idx;
}
