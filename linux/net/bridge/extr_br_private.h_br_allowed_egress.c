
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;



__attribute__((used)) static inline bool br_allowed_egress(struct net_bridge_vlan_group *vg,
         const struct sk_buff *skb)
{
 return 1;
}
