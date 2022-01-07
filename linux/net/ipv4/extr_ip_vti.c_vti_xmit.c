
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ protocol; int sk; struct net_device* dev; } ;
struct TYPE_4__ {int tx_errors; int collisions; int tx_carrier_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int saddr; int daddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; } ;
struct ip_tunnel {int net; struct ip_tunnel_parm parms; } ;
struct flowi {int dummy; } ;
struct dst_entry {struct net_device* dev; int xfrm; } ;
typedef int netdev_tx_t ;


 int ETH_P_IP ;
 int ICMPV6_PKT_TOOBIG ;
 int ICMP_DEST_UNREACH ;
 int ICMP_FRAG_NEEDED ;
 int IPV6_MIN_MTU ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int NETDEV_TX_OK ;
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
 int iptunnel_xmit_stats (struct net_device*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int net_eq (int ,int ) ;
 scalar_t__ net_xmit_eval (int) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,struct dst_entry*) ;
 int skb_dst_update_pmtu (struct sk_buff*,int) ;
 int skb_scrub_packet (struct sk_buff*,int) ;
 int vti_state_check (int ,int ,int ) ;
 struct dst_entry* xfrm_lookup (int ,struct dst_entry*,struct flowi*,int *,int ) ;

__attribute__((used)) static netdev_tx_t vti_xmit(struct sk_buff *skb, struct net_device *dev,
       struct flowi *fl)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct ip_tunnel_parm *parms = &tunnel->parms;
 struct dst_entry *dst = skb_dst(skb);
 struct net_device *tdev;
 int pkt_len = skb->len;
 int err;
 int mtu;

 if (!dst) {
  dev->stats.tx_carrier_errors++;
  goto tx_error_icmp;
 }

 dst_hold(dst);
 dst = xfrm_lookup(tunnel->net, dst, fl, ((void*)0), 0);
 if (IS_ERR(dst)) {
  dev->stats.tx_carrier_errors++;
  goto tx_error_icmp;
 }

 if (!vti_state_check(dst->xfrm, parms->iph.daddr, parms->iph.saddr)) {
  dev->stats.tx_carrier_errors++;
  dst_release(dst);
  goto tx_error_icmp;
 }

 tdev = dst->dev;

 if (tdev == dev) {
  dst_release(dst);
  dev->stats.collisions++;
  goto tx_error;
 }

 mtu = dst_mtu(dst);
 if (skb->len > mtu) {
  skb_dst_update_pmtu(skb, mtu);
  if (skb->protocol == htons(ETH_P_IP)) {
   icmp_send(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
      htonl(mtu));
  } else {
   if (mtu < IPV6_MIN_MTU)
    mtu = IPV6_MIN_MTU;

   icmpv6_send(skb, ICMPV6_PKT_TOOBIG, 0, mtu);
  }

  dst_release(dst);
  goto tx_error;
 }

 skb_scrub_packet(skb, !net_eq(tunnel->net, dev_net(dev)));
 skb_dst_set(skb, dst);
 skb->dev = skb_dst(skb)->dev;

 err = dst_output(tunnel->net, skb->sk, skb);
 if (net_xmit_eval(err) == 0)
  err = pkt_len;
 iptunnel_xmit_stats(dev, err);
 return NETDEV_TX_OK;

tx_error_icmp:
 dst_link_failure(skb);
tx_error:
 dev->stats.tx_errors++;
 kfree_skb(skb);
 return NETDEV_TX_OK;
}
