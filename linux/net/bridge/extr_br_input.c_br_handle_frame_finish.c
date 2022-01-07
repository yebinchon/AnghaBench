
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int dev; } ;
struct net_bridge_port {scalar_t__ state; int flags; struct net_bridge* br; } ;
struct net_bridge_mdb_entry {int host_joined; } ;
struct net_bridge_fdb_entry {unsigned long used; int dst; scalar_t__ is_local; } ;
struct net_bridge {TYPE_2__* dev; } ;
struct net {int dummy; } ;
struct nd_msg {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef enum br_pkt_type { ____Placeholder_br_pkt_type } br_pkt_type ;
struct TYPE_11__ {int src_port_isolated; TYPE_2__* brdev; } ;
struct TYPE_10__ {int h_dest; int h_source; } ;
struct TYPE_9__ {scalar_t__ nexthdr; } ;
struct TYPE_7__ {int multicast; } ;
struct TYPE_8__ {int flags; TYPE_1__ stats; } ;


 int BROPT_NEIGH_SUPPRESS_ENABLED ;
 TYPE_6__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int BR_INPUT_SKB_CB_MROUTERS_ONLY (struct sk_buff*) ;
 int BR_ISOLATED ;
 int BR_LEARNING ;
 int BR_PKT_BROADCAST ;


 scalar_t__ BR_STATE_DISABLED ;
 scalar_t__ BR_STATE_LEARNING ;
 int CONFIG_INET ;
 int CONFIG_IPV6 ;
 int ETH_P_ARP ;
 int ETH_P_IPV6 ;
 int ETH_P_RARP ;
 int IFF_PROMISC ;
 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IS_ENABLED (int ) ;
 int br_allowed_ingress (struct net_bridge*,int ,struct sk_buff*,int *) ;
 int br_do_proxy_suppress_arp (struct sk_buff*,struct net_bridge*,int ,struct net_bridge_port*) ;
 int br_do_suppress_nd (struct sk_buff*,struct net_bridge*,int ,struct net_bridge_port*,struct nd_msg*) ;
 struct net_bridge_fdb_entry* br_fdb_find_rcu (struct net_bridge*,int ,int ) ;
 int br_fdb_update (struct net_bridge*,struct net_bridge_port*,int ,int ,int) ;
 int br_flood (struct net_bridge*,struct sk_buff*,int,int,int) ;
 int br_forward (int ,struct sk_buff*,int,int) ;
 struct nd_msg* br_is_nd_neigh_msg (struct sk_buff*,struct nd_msg*) ;
 struct net_bridge_mdb_entry* br_mdb_get (struct net_bridge*,struct sk_buff*,int ) ;
 int br_multicast_flood (struct net_bridge_mdb_entry*,struct sk_buff*,int,int) ;
 int br_multicast_is_router (struct net_bridge*) ;
 int br_multicast_querier_exists (struct net_bridge*,TYPE_4__*) ;
 scalar_t__ br_multicast_rcv (struct net_bridge*,struct net_bridge_port*,struct sk_buff*,int ) ;
 scalar_t__ br_opt_get (struct net_bridge*,int ) ;
 int br_pass_frame_up (struct sk_buff*) ;
 struct net_bridge_port* br_port_get_rcu (int ) ;
 TYPE_4__* eth_hdr (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 unsigned long jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int nbp_switchdev_frame_mark (struct net_bridge_port*,struct sk_buff*) ;
 int nbp_vlan_group_rcu (struct net_bridge_port*) ;
 scalar_t__ pskb_may_pull (struct sk_buff*,int) ;

int br_handle_frame_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct net_bridge_port *p = br_port_get_rcu(skb->dev);
 enum br_pkt_type pkt_type = 128;
 struct net_bridge_fdb_entry *dst = ((void*)0);
 struct net_bridge_mdb_entry *mdst;
 bool local_rcv, mcast_hit = 0;
 struct net_bridge *br;
 u16 vid = 0;

 if (!p || p->state == BR_STATE_DISABLED)
  goto drop;

 if (!br_allowed_ingress(p->br, nbp_vlan_group_rcu(p), skb, &vid))
  goto out;

 nbp_switchdev_frame_mark(p, skb);


 br = p->br;
 if (p->flags & BR_LEARNING)
  br_fdb_update(br, p, eth_hdr(skb)->h_source, vid, 0);

 local_rcv = !!(br->dev->flags & IFF_PROMISC);
 if (is_multicast_ether_addr(eth_hdr(skb)->h_dest)) {

  if (is_broadcast_ether_addr(eth_hdr(skb)->h_dest)) {
   pkt_type = BR_PKT_BROADCAST;
   local_rcv = 1;
  } else {
   pkt_type = 129;
   if (br_multicast_rcv(br, p, skb, vid))
    goto drop;
  }
 }

 if (p->state == BR_STATE_LEARNING)
  goto drop;

 BR_INPUT_SKB_CB(skb)->brdev = br->dev;
 BR_INPUT_SKB_CB(skb)->src_port_isolated = !!(p->flags & BR_ISOLATED);

 if (IS_ENABLED(CONFIG_INET) &&
     (skb->protocol == htons(ETH_P_ARP) ||
      skb->protocol == htons(ETH_P_RARP))) {
  br_do_proxy_suppress_arp(skb, br, vid, p);
 } else if (IS_ENABLED(CONFIG_IPV6) &&
     skb->protocol == htons(ETH_P_IPV6) &&
     br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED) &&
     pskb_may_pull(skb, sizeof(struct ipv6hdr) +
     sizeof(struct nd_msg)) &&
     ipv6_hdr(skb)->nexthdr == IPPROTO_ICMPV6) {
   struct nd_msg *msg, _msg;

   msg = br_is_nd_neigh_msg(skb, &_msg);
   if (msg)
    br_do_suppress_nd(skb, br, vid, p, msg);
 }

 switch (pkt_type) {
 case 129:
  mdst = br_mdb_get(br, skb, vid);
  if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
      br_multicast_querier_exists(br, eth_hdr(skb))) {
   if ((mdst && mdst->host_joined) ||
       br_multicast_is_router(br)) {
    local_rcv = 1;
    br->dev->stats.multicast++;
   }
   mcast_hit = 1;
  } else {
   local_rcv = 1;
   br->dev->stats.multicast++;
  }
  break;
 case 128:
  dst = br_fdb_find_rcu(br, eth_hdr(skb)->h_dest, vid);
 default:
  break;
 }

 if (dst) {
  unsigned long now = jiffies;

  if (dst->is_local)
   return br_pass_frame_up(skb);

  if (now != dst->used)
   dst->used = now;
  br_forward(dst->dst, skb, local_rcv, 0);
 } else {
  if (!mcast_hit)
   br_flood(br, skb, pkt_type, local_rcv, 0);
  else
   br_multicast_flood(mdst, skb, local_rcv, 0);
 }

 if (local_rcv)
  return br_pass_frame_up(skb);

out:
 return 0;
drop:
 kfree_skb(skb);
 goto out;
}
