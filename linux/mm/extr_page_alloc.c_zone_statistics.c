
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
typedef enum numa_stat_item { ____Placeholder_numa_stat_item } numa_stat_item ;


 int NUMA_FOREIGN ;
 int NUMA_HIT ;
 int NUMA_LOCAL ;
 int NUMA_MISS ;
 int NUMA_OTHER ;
 int __inc_numa_state (struct zone*,int) ;
 scalar_t__ numa_node_id () ;
 int static_branch_likely (int *) ;
 int vm_numa_stat_key ;
 scalar_t__ zone_to_nid (struct zone*) ;

__attribute__((used)) static inline void zone_statistics(struct zone *preferred_zone, struct zone *z)
{
}
