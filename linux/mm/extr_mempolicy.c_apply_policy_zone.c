
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
struct mempolicy {TYPE_1__ v; } ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;


 int BUG_ON (int) ;
 size_t N_HIGH_MEMORY ;
 int ZONE_MOVABLE ;
 int * node_states ;
 int nodes_intersects (int ,int ) ;
 int policy_zone ;

__attribute__((used)) static int apply_policy_zone(struct mempolicy *policy, enum zone_type zone)
{
 enum zone_type dynamic_policy_zone = policy_zone;

 BUG_ON(dynamic_policy_zone == ZONE_MOVABLE);
 if (!nodes_intersects(policy->v.nodes, node_states[N_HIGH_MEMORY]))
  dynamic_policy_zone = ZONE_MOVABLE;

 return zone >= dynamic_policy_zone;
}
