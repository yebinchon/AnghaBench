
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* pkt_to_skb (struct cfpkt*) ;

void cfpkt_destroy(struct cfpkt *pkt)
{
 struct sk_buff *skb = pkt_to_skb(pkt);
 kfree_skb(skb);
}
