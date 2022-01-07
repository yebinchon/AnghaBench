
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int dummy; } ;



__attribute__((used)) static inline int br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
      struct net_bridge_port *p,
      struct net_bridge_vlan_group *vg)
{
 return 0;
}
