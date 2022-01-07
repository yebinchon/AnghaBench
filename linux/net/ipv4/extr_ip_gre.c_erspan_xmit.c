
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int tx_dropped; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; TYPE_2__ stats; int needed_headroom; } ;
struct TYPE_3__ {int iph; int o_flags; int o_key; } ;
struct ip_tunnel {int erspan_ver; TYPE_1__ parms; int hwid; int dir; int index; scalar_t__ collect_md; } ;
typedef int netdev_tx_t ;
typedef int __be16 ;


 int ETH_P_ERSPAN ;
 int ETH_P_ERSPAN2 ;
 int NETDEV_TX_OK ;
 int TUNNEL_KEY ;
 int __gre_xmit (struct sk_buff*,struct net_device*,int *,int ) ;
 int erspan_build_header (struct sk_buff*,int ,int ,int,int) ;
 int erspan_build_header_v2 (struct sk_buff*,int ,int ,int ,int,int) ;
 int erspan_fb_xmit (struct sk_buff*,struct net_device*) ;
 scalar_t__ gre_handle_offloads (struct sk_buff*,int) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int ntohl (int ) ;
 int pskb_inet_may_pull (struct sk_buff*) ;
 int pskb_trim (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_tx_t erspan_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 bool truncate = 0;
 __be16 proto;

 if (!pskb_inet_may_pull(skb))
  goto free_skb;

 if (tunnel->collect_md) {
  erspan_fb_xmit(skb, dev);
  return NETDEV_TX_OK;
 }

 if (gre_handle_offloads(skb, 0))
  goto free_skb;

 if (skb_cow_head(skb, dev->needed_headroom))
  goto free_skb;

 if (skb->len > dev->mtu + dev->hard_header_len) {
  pskb_trim(skb, dev->mtu + dev->hard_header_len);
  truncate = 1;
 }


 if (tunnel->erspan_ver == 1) {
  erspan_build_header(skb, ntohl(tunnel->parms.o_key),
        tunnel->index,
        truncate, 1);
  proto = htons(ETH_P_ERSPAN);
 } else if (tunnel->erspan_ver == 2) {
  erspan_build_header_v2(skb, ntohl(tunnel->parms.o_key),
           tunnel->dir, tunnel->hwid,
           truncate, 1);
  proto = htons(ETH_P_ERSPAN2);
 } else {
  goto free_skb;
 }

 tunnel->parms.o_flags &= ~TUNNEL_KEY;
 __gre_xmit(skb, dev, &tunnel->parms.iph, proto);
 return NETDEV_TX_OK;

free_skb:
 kfree_skb(skb);
 dev->stats.tx_dropped++;
 return NETDEV_TX_OK;
}
