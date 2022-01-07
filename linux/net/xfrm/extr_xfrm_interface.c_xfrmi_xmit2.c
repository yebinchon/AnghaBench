
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_state {scalar_t__ if_id; } ;
struct TYPE_4__ {scalar_t__ if_id; } ;
struct xfrm_if {int net; TYPE_2__ p; TYPE_1__* dev; } ;
struct sk_buff {unsigned int len; scalar_t__ protocol; int sk; struct net_device* dev; int ignore_df; } ;
struct pcpu_sw_netstats {unsigned int tx_bytes; int syncp; int tx_packets; } ;
struct net_device_stats {int tx_carrier_errors; int tx_aborted_errors; int tx_errors; int collisions; } ;
struct net_device {int tstats; int name; } ;
struct flowi {int dummy; } ;
struct dst_entry {struct net_device* dev; struct xfrm_state* xfrm; } ;
struct TYPE_3__ {struct net_device_stats stats; } ;


 int EMSGSIZE ;
 int ETH_P_IPV6 ;
 int ICMPV6_PKT_TOOBIG ;
 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 int IPV6_MIN_MTU ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int PTR_ERR (struct dst_entry*) ;
 int dev_net (struct net_device*) ;
 int dst_hold (struct dst_entry*) ;
 int dst_link_failure (struct sk_buff*) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_output (int ,int ,struct sk_buff*) ;
 int dst_release (struct dst_entry*) ;
 int htonl (int) ;
 scalar_t__ htons (int ) ;
 int icmp_send (struct sk_buff*,int ,int ,int ) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int) ;
 int net_eq (int ,int ) ;
 int net_warn_ratelimited (char*,int ) ;
 scalar_t__ net_xmit_eval (int) ;
 struct xfrm_if* netdev_priv (struct net_device*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_dst_update_pmtu (struct sk_buff*,int) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 struct dst_entry* xfrm_lookup_with_ifid (int ,struct dst_entry*,struct flowi*,int *,int ,scalar_t__) ;
 int xfrmi_scrub_packet (struct sk_buff*,int) ;

__attribute__((used)) static int
xfrmi_xmit2(struct sk_buff *skb, struct net_device *dev, struct flowi *fl)
{
 struct xfrm_if *xi = netdev_priv(dev);
 struct net_device_stats *stats = &xi->dev->stats;
 struct dst_entry *dst = skb_dst(skb);
 unsigned int length = skb->len;
 struct net_device *tdev;
 struct xfrm_state *x;
 int err = -1;
 int mtu;

 if (!dst)
  goto tx_err_link_failure;

 dst_hold(dst);
 dst = xfrm_lookup_with_ifid(xi->net, dst, fl, ((void*)0), 0, xi->p.if_id);
 if (IS_ERR(dst)) {
  err = PTR_ERR(dst);
  dst = ((void*)0);
  goto tx_err_link_failure;
 }

 x = dst->xfrm;
 if (!x)
  goto tx_err_link_failure;

 if (x->if_id != xi->p.if_id)
  goto tx_err_link_failure;

 tdev = dst->dev;

 if (tdev == dev) {
  stats->collisions++;
  net_warn_ratelimited("%s: Local routing loop detected!\n",
         dev->name);
  goto tx_err_dst_release;
 }

 mtu = dst_mtu(dst);
 if (!skb->ignore_df && skb->len > mtu) {
  skb_dst_update_pmtu(skb, mtu);

  if (skb->protocol == htons(ETH_P_IPV6)) {
   if (mtu < IPV6_MIN_MTU)
    mtu = IPV6_MIN_MTU;

   icmpv6_send(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
  } else {
   icmp_send(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
      htonl(mtu));
  }

  dst_release(dst);
  return -EMSGSIZE;
 }

 xfrmi_scrub_packet(skb, !net_eq(xi->net, dev_net(dev)));
 skb_dst_set(skb, dst);
 skb->dev = tdev;

 err = dst_output(xi->net, skb->sk, skb);
 if (net_xmit_eval(err) == 0) {
  struct pcpu_sw_netstats *tstats = this_cpu_ptr(dev->tstats);

  u64_stats_update_begin(&tstats->syncp);
  tstats->tx_bytes += length;
  tstats->tx_packets++;
  u64_stats_update_end(&tstats->syncp);
 } else {
  stats->tx_errors++;
  stats->tx_aborted_errors++;
 }

 return 0;
tx_err_link_failure:
 stats->tx_carrier_errors++;
 dst_link_failure(skb);
tx_err_dst_release:
 dst_release(dst);
 return err;
}
