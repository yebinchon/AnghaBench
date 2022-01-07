
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; int ip_summed; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_IEEE802154 ;
 int htons (int ) ;
 int netif_receive_skb (struct sk_buff*) ;

__attribute__((used)) static int ieee802154_deliver_skb(struct sk_buff *skb)
{
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb->protocol = htons(ETH_P_IEEE802154);

 return netif_receive_skb(skb);
}
