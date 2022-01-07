
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan {int dummy; } ;


 scalar_t__ br_vlan_is_brentry (struct net_bridge_vlan const*) ;
 scalar_t__ br_vlan_is_master (struct net_bridge_vlan const*) ;

__attribute__((used)) static inline bool br_vlan_should_use(const struct net_bridge_vlan *v)
{
 if (br_vlan_is_master(v)) {
  if (br_vlan_is_brentry(v))
   return 1;
  else
   return 0;
 }

 return 1;
}
