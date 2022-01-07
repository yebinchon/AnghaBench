
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ len; TYPE_1__* dev; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int flags; int stats; } ;
struct net_bridge_port {int flags; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct br_vlan_stats {int syncp; int tx_packets; int tx_bytes; } ;
struct TYPE_4__ {int vlan_filtered; } ;
struct TYPE_3__ {int flags; } ;


 int BRIDGE_VLAN_INFO_UNTAGGED ;
 int BROPT_VLAN_STATS_ENABLED ;
 TYPE_2__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int BR_VLAN_TUNNEL ;
 int IFF_PROMISC ;
 int __vlan_hwaccel_clear_tag (struct sk_buff*) ;
 scalar_t__ br_handle_egress_vlan_tunnel (struct sk_buff*,struct net_bridge_vlan*) ;
 scalar_t__ br_opt_get (struct net_bridge*,int ) ;
 struct net_bridge_vlan* br_vlan_find (struct net_bridge_vlan_group*,int ) ;
 int br_vlan_get_tag (struct sk_buff*,int *) ;
 int br_vlan_should_use (struct net_bridge_vlan*) ;
 int kfree_skb (struct sk_buff*) ;
 struct br_vlan_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

struct sk_buff *br_handle_vlan(struct net_bridge *br,
          const struct net_bridge_port *p,
          struct net_bridge_vlan_group *vg,
          struct sk_buff *skb)
{
 struct br_vlan_stats *stats;
 struct net_bridge_vlan *v;
 u16 vid;


 if (!BR_INPUT_SKB_CB(skb)->vlan_filtered)
  goto out;





 br_vlan_get_tag(skb, &vid);
 v = br_vlan_find(vg, vid);





 if (!v || !br_vlan_should_use(v)) {
  if ((br->dev->flags & IFF_PROMISC) && skb->dev == br->dev) {
   goto out;
  } else {
   kfree_skb(skb);
   return ((void*)0);
  }
 }
 if (br_opt_get(br, BROPT_VLAN_STATS_ENABLED)) {
  stats = this_cpu_ptr(v->stats);
  u64_stats_update_begin(&stats->syncp);
  stats->tx_bytes += skb->len;
  stats->tx_packets++;
  u64_stats_update_end(&stats->syncp);
 }

 if (v->flags & BRIDGE_VLAN_INFO_UNTAGGED)
  __vlan_hwaccel_clear_tag(skb);

 if (p && (p->flags & BR_VLAN_TUNNEL) &&
     br_handle_egress_vlan_tunnel(skb, v)) {
  kfree_skb(skb);
  return ((void*)0);
 }
out:
 return skb;
}
