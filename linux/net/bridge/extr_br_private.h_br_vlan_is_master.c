
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_vlan {int flags; } ;


 int BRIDGE_VLAN_INFO_MASTER ;

__attribute__((used)) static inline bool br_vlan_is_master(const struct net_bridge_vlan *v)
{
 return v->flags & BRIDGE_VLAN_INFO_MASTER;
}
