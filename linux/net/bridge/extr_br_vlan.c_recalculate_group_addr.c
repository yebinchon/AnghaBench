
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ vlan_proto; int* group_addr; int lock; } ;


 int BROPT_GROUP_ADDR_SET ;
 int BROPT_VLAN_ENABLED ;
 int ETH_P_8021Q ;
 scalar_t__ br_opt_get (struct net_bridge*,int ) ;
 scalar_t__ htons (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void recalculate_group_addr(struct net_bridge *br)
{
 if (br_opt_get(br, BROPT_GROUP_ADDR_SET))
  return;

 spin_lock_bh(&br->lock);
 if (!br_opt_get(br, BROPT_VLAN_ENABLED) ||
     br->vlan_proto == htons(ETH_P_8021Q)) {

  br->group_addr[5] = 0x00;
 } else {

  br->group_addr[5] = 0x08;
 }
 spin_unlock_bh(&br->lock);
}
