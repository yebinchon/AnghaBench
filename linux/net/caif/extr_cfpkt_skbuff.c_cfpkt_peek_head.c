
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int data; } ;
struct cfpkt {int dummy; } ;


 int cfpkt_add_head (struct cfpkt*,void*,int ) ;
 int cfpkt_extr_head (struct cfpkt*,void*,int ) ;
 int memcpy (void*,int ,int ) ;
 struct sk_buff* pkt_to_skb (struct cfpkt*) ;
 int skb_headlen (struct sk_buff*) ;

int cfpkt_peek_head(struct cfpkt *pkt, void *data, u16 len)
{
 struct sk_buff *skb = pkt_to_skb(pkt);
 if (skb_headlen(skb) >= len) {
  memcpy(data, skb->data, len);
  return 0;
 }
 return !cfpkt_extr_head(pkt, data, len) &&
     !cfpkt_add_head(pkt, data, len);
}
