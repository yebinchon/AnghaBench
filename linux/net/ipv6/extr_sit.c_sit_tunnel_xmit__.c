
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct iphdr {int dummy; } ;
struct TYPE_3__ {struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int SKB_GSO_IPXIP4 ;
 int ip_tunnel_xmit (struct sk_buff*,struct net_device*,struct iphdr const*,int ) ;
 scalar_t__ iptunnel_handle_offloads (struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int skb_set_inner_ipproto (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_tx_t sit_tunnel_xmit__(struct sk_buff *skb,
         struct net_device *dev, u8 ipproto)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 const struct iphdr *tiph = &tunnel->parms.iph;

 if (iptunnel_handle_offloads(skb, SKB_GSO_IPXIP4))
  goto tx_error;

 skb_set_inner_ipproto(skb, ipproto);

 ip_tunnel_xmit(skb, dev, tiph, ipproto);
 return NETDEV_TX_OK;
tx_error:
 kfree_skb(skb);
 dev->stats.tx_errors++;
 return NETDEV_TX_OK;
}
