
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge {int dummy; } ;



__attribute__((used)) static inline bool br_allowed_ingress(const struct net_bridge *br,
          struct net_bridge_vlan_group *vg,
          struct sk_buff *skb,
          u16 *vid)
{
 return 1;
}
