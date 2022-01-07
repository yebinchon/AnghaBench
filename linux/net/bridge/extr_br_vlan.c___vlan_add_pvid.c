
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_bridge_vlan_group {scalar_t__ pvid; } ;


 int smp_wmb () ;

__attribute__((used)) static bool __vlan_add_pvid(struct net_bridge_vlan_group *vg, u16 vid)
{
 if (vg->pvid == vid)
  return 0;

 smp_wmb();
 vg->pvid = vid;

 return 1;
}
