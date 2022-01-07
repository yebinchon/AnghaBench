
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct cfpkt {int dummy; } ;


 struct sk_buff* pkt_to_skb (struct cfpkt*) ;

inline bool cfpkt_more(struct cfpkt *pkt)
{
 struct sk_buff *skb = pkt_to_skb(pkt);
 return skb->len > 0;
}
