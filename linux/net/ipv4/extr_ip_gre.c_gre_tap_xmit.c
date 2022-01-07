
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; int needed_headroom; } ;
struct TYPE_4__ {int o_flags; int iph; } ;
struct ip_tunnel {TYPE_2__ parms; scalar_t__ collect_md; } ;
typedef int netdev_tx_t ;


 int ETH_P_TEB ;
 int NETDEV_TX_OK ;
 int TUNNEL_CSUM ;
 int __gre_xmit (struct sk_buff*,struct net_device*,int *,int ) ;
 int gre_fb_xmit (struct sk_buff*,struct net_device*,int ) ;
 scalar_t__ gre_handle_offloads (struct sk_buff*,int) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int pskb_inet_may_pull (struct sk_buff*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_tx_t gre_tap_xmit(struct sk_buff *skb,
    struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);

 if (!pskb_inet_may_pull(skb))
  goto free_skb;

 if (tunnel->collect_md) {
  gre_fb_xmit(skb, dev, htons(ETH_P_TEB));
  return NETDEV_TX_OK;
 }

 if (gre_handle_offloads(skb, !!(tunnel->parms.o_flags & TUNNEL_CSUM)))
  goto free_skb;

 if (skb_cow_head(skb, dev->needed_headroom))
  goto free_skb;

 __gre_xmit(skb, dev, &tunnel->parms.iph, htons(ETH_P_TEB));
 return NETDEV_TX_OK;

free_skb:
 kfree_skb(skb);
 dev->stats.tx_dropped++;
 return NETDEV_TX_OK;
}
