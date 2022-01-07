
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; TYPE_2__* dev; int protocol; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ETH_P_IPV6 ;
 int htons (int ) ;
 int netif_rx (struct sk_buff*) ;

__attribute__((used)) static int lowpan_give_skb_to_device(struct sk_buff *skb)
{
 skb->protocol = htons(ETH_P_IPV6);
 skb->dev->stats.rx_packets++;
 skb->dev->stats.rx_bytes += skb->len;

 return netif_rx(skb);
}
