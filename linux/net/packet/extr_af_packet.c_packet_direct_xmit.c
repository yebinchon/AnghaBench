
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int dev_direct_xmit (struct sk_buff*,int ) ;
 int packet_pick_tx_queue (struct sk_buff*) ;

__attribute__((used)) static int packet_direct_xmit(struct sk_buff *skb)
{
 return dev_direct_xmit(skb, packet_pick_tx_queue(skb));
}
