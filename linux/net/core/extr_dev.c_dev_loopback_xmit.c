
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int ip_summed; int pkt_type; } ;
struct net {int dummy; } ;


 int CHECKSUM_UNNECESSARY ;
 int PACKET_LOOPBACK ;
 int WARN_ON (int) ;
 int __skb_pull (struct sk_buff*,int ) ;
 int netif_rx_ni (struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int skb_dst_force (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

int dev_loopback_xmit(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 skb_reset_mac_header(skb);
 __skb_pull(skb, skb_network_offset(skb));
 skb->pkt_type = PACKET_LOOPBACK;
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 WARN_ON(!skb_dst(skb));
 skb_dst_force(skb);
 netif_rx_ni(skb);
 return 0;
}
