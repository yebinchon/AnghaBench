
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ dev; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int flags; scalar_t__ dev; scalar_t__ state; } ;


 int BR_HAIRPIN_MODE ;
 scalar_t__ BR_STATE_FORWARDING ;
 scalar_t__ br_allowed_egress (struct net_bridge_vlan_group*,struct sk_buff const*) ;
 int br_skb_isolated (struct net_bridge_port const*,struct sk_buff const*) ;
 scalar_t__ nbp_switchdev_allowed_egress (struct net_bridge_port const*,struct sk_buff const*) ;
 struct net_bridge_vlan_group* nbp_vlan_group_rcu (struct net_bridge_port const*) ;

__attribute__((used)) static inline int should_deliver(const struct net_bridge_port *p,
     const struct sk_buff *skb)
{
 struct net_bridge_vlan_group *vg;

 vg = nbp_vlan_group_rcu(p);
 return ((p->flags & BR_HAIRPIN_MODE) || skb->dev != p->dev) &&
  br_allowed_egress(vg, skb) && p->state == BR_STATE_FORWARDING &&
  nbp_switchdev_allowed_egress(p, skb) &&
  !br_skb_isolated(p, skb);
}
