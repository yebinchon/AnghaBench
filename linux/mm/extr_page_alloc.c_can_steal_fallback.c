
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIGRATE_RECLAIMABLE ;
 int MIGRATE_UNMOVABLE ;
 scalar_t__ page_group_by_mobility_disabled ;
 unsigned int pageblock_order ;

__attribute__((used)) static bool can_steal_fallback(unsigned int order, int start_mt)
{







 if (order >= pageblock_order)
  return 1;

 if (order >= pageblock_order / 2 ||
  start_mt == MIGRATE_RECLAIMABLE ||
  start_mt == MIGRATE_UNMOVABLE ||
  page_group_by_mobility_disabled)
  return 1;

 return 0;
}
