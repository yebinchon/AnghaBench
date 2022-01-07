
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ vlan_proto; unsigned int group_fwd_mask_required; unsigned int* group_addr; } ;


 int BROPT_VLAN_ENABLED ;
 unsigned int BR_GROUPFWD_8021AD ;
 unsigned int BR_GROUPFWD_DEFAULT ;
 int ETH_P_8021Q ;
 int br_opt_get (struct net_bridge*,int ) ;
 scalar_t__ htons (int ) ;

void br_recalculate_fwd_mask(struct net_bridge *br)
{
 if (!br_opt_get(br, BROPT_VLAN_ENABLED) ||
     br->vlan_proto == htons(ETH_P_8021Q))
  br->group_fwd_mask_required = BR_GROUPFWD_DEFAULT;
 else
  br->group_fwd_mask_required = BR_GROUPFWD_8021AD &
           ~(1u << br->group_addr[5]);
}
