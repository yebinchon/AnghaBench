
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; } ;
struct cfpkt {int dummy; } ;


 struct sk_buff* pkt_to_skb (struct cfpkt*) ;

inline u16 cfpkt_getlen(struct cfpkt *pkt)
{
 struct sk_buff *skb = pkt_to_skb(pkt);
 return skb->len;
}
