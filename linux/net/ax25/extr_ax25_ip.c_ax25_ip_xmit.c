
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int kfree_skb (struct sk_buff*) ;

netdev_tx_t ax25_ip_xmit(struct sk_buff *skb)
{
 kfree_skb(skb);
 return NETDEV_TX_OK;
}
