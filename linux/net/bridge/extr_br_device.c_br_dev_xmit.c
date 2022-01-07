
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; } ;
struct pcpu_sw_netstats {int syncp; int tx_bytes; int tx_packets; } ;
struct nf_br_ops {scalar_t__ (* br_dev_xmit_hook ) (struct sk_buff*) ;} ;
struct net_device {int dummy; } ;
struct net_bridge_mdb_entry {int dummy; } ;
struct net_bridge_fdb_entry {int dst; } ;
struct net_bridge {int stats; } ;
struct nd_msg {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ethhdr {scalar_t__ h_proto; unsigned char* h_dest; } ;
typedef int netdev_tx_t ;
struct TYPE_4__ {scalar_t__ frag_max_size; struct net_device* brdev; } ;
struct TYPE_3__ {scalar_t__ nexthdr; } ;


 int BROPT_NEIGH_SUPPRESS_ENABLED ;
 TYPE_2__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 scalar_t__ BR_INPUT_SKB_CB_MROUTERS_ONLY (struct sk_buff*) ;
 int BR_PKT_BROADCAST ;
 int BR_PKT_MULTICAST ;
 int BR_PKT_UNICAST ;
 int CONFIG_INET ;
 int CONFIG_IPV6 ;
 int ETH_HLEN ;
 int ETH_P_ARP ;
 int ETH_P_IPV6 ;
 int ETH_P_RARP ;
 scalar_t__ IPPROTO_ICMPV6 ;
 scalar_t__ IS_ENABLED (int ) ;
 int NETDEV_TX_OK ;
 int br_allowed_ingress (struct net_bridge*,int ,struct sk_buff*,int *) ;
 int br_do_proxy_suppress_arp (struct sk_buff*,struct net_bridge*,int ,int *) ;
 int br_do_suppress_nd (struct sk_buff*,struct net_bridge*,int ,int *,struct nd_msg*) ;
 struct net_bridge_fdb_entry* br_fdb_find_rcu (struct net_bridge*,unsigned char const*,int ) ;
 int br_flood (struct net_bridge*,struct sk_buff*,int ,int,int) ;
 int br_forward (int ,struct sk_buff*,int,int) ;
 struct nd_msg* br_is_nd_neigh_msg (struct sk_buff*,struct nd_msg*) ;
 struct net_bridge_mdb_entry* br_mdb_get (struct net_bridge*,struct sk_buff*,int ) ;
 int br_multicast_flood (struct net_bridge_mdb_entry*,struct sk_buff*,int,int) ;
 scalar_t__ br_multicast_querier_exists (struct net_bridge*,struct ethhdr*) ;
 scalar_t__ br_multicast_rcv (struct net_bridge*,int *,struct sk_buff*,int ) ;
 scalar_t__ br_opt_get (struct net_bridge*,int ) ;
 int br_switchdev_frame_unmark (struct sk_buff*) ;
 int br_vlan_group_rcu (struct net_bridge*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ is_broadcast_ether_addr (unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 int kfree_skb (struct sk_buff*) ;
 struct net_bridge* netdev_priv (struct net_device*) ;
 int netpoll_tx_running (struct net_device*) ;
 int nf_br_ops ;
 scalar_t__ pskb_may_pull (struct sk_buff*,int) ;
 struct nf_br_ops* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ stub1 (struct sk_buff*) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int ) ;

netdev_tx_t br_dev_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct net_bridge *br = netdev_priv(dev);
 struct net_bridge_fdb_entry *dst;
 struct net_bridge_mdb_entry *mdst;
 struct pcpu_sw_netstats *brstats = this_cpu_ptr(br->stats);
 const struct nf_br_ops *nf_ops;
 const unsigned char *dest;
 struct ethhdr *eth;
 u16 vid = 0;

 rcu_read_lock();
 nf_ops = rcu_dereference(nf_br_ops);
 if (nf_ops && nf_ops->br_dev_xmit_hook(skb)) {
  rcu_read_unlock();
  return NETDEV_TX_OK;
 }

 u64_stats_update_begin(&brstats->syncp);
 brstats->tx_packets++;
 brstats->tx_bytes += skb->len;
 u64_stats_update_end(&brstats->syncp);

 br_switchdev_frame_unmark(skb);
 BR_INPUT_SKB_CB(skb)->brdev = dev;
 BR_INPUT_SKB_CB(skb)->frag_max_size = 0;

 skb_reset_mac_header(skb);
 eth = eth_hdr(skb);
 skb_pull(skb, ETH_HLEN);

 if (!br_allowed_ingress(br, br_vlan_group_rcu(br), skb, &vid))
  goto out;

 if (IS_ENABLED(CONFIG_INET) &&
     (eth->h_proto == htons(ETH_P_ARP) ||
      eth->h_proto == htons(ETH_P_RARP)) &&
     br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED)) {
  br_do_proxy_suppress_arp(skb, br, vid, ((void*)0));
 } else if (IS_ENABLED(CONFIG_IPV6) &&
     skb->protocol == htons(ETH_P_IPV6) &&
     br_opt_get(br, BROPT_NEIGH_SUPPRESS_ENABLED) &&
     pskb_may_pull(skb, sizeof(struct ipv6hdr) +
     sizeof(struct nd_msg)) &&
     ipv6_hdr(skb)->nexthdr == IPPROTO_ICMPV6) {
   struct nd_msg *msg, _msg;

   msg = br_is_nd_neigh_msg(skb, &_msg);
   if (msg)
    br_do_suppress_nd(skb, br, vid, ((void*)0), msg);
 }

 dest = eth_hdr(skb)->h_dest;
 if (is_broadcast_ether_addr(dest)) {
  br_flood(br, skb, BR_PKT_BROADCAST, 0, 1);
 } else if (is_multicast_ether_addr(dest)) {
  if (unlikely(netpoll_tx_running(dev))) {
   br_flood(br, skb, BR_PKT_MULTICAST, 0, 1);
   goto out;
  }
  if (br_multicast_rcv(br, ((void*)0), skb, vid)) {
   kfree_skb(skb);
   goto out;
  }

  mdst = br_mdb_get(br, skb, vid);
  if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
      br_multicast_querier_exists(br, eth_hdr(skb)))
   br_multicast_flood(mdst, skb, 0, 1);
  else
   br_flood(br, skb, BR_PKT_MULTICAST, 0, 1);
 } else if ((dst = br_fdb_find_rcu(br, dest, vid)) != ((void*)0)) {
  br_forward(dst->dst, skb, 0, 1);
 } else {
  br_flood(br, skb, BR_PKT_UNICAST, 0, 1);
 }
out:
 rcu_read_unlock();
 return NETDEV_TX_OK;
}
