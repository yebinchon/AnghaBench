
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int priority; int * data; } ;
struct cfpkt {int dummy; } ;


 int PKT_ERROR (struct cfpkt*,char*) ;
 int PKT_POSTFIX ;
 int PKT_PREFIX ;
 struct cfpkt* cfpkt_create_pfx (int,int) ;
 int is_erronous (struct cfpkt*) ;
 struct sk_buff* pkt_to_skb (struct cfpkt*) ;
 int skb_put_data (struct sk_buff*,int *,int) ;
 int * skb_tail_pointer (struct sk_buff*) ;
 struct cfpkt* skb_to_pkt (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;
 scalar_t__ unlikely (int ) ;

struct cfpkt *cfpkt_split(struct cfpkt *pkt, u16 pos)
{
 struct sk_buff *skb2;
 struct sk_buff *skb = pkt_to_skb(pkt);
 struct cfpkt *tmppkt;
 u8 *split = skb->data + pos;
 u16 len2nd = skb_tail_pointer(skb) - split;

 if (unlikely(is_erronous(pkt)))
  return ((void*)0);

 if (skb->data + pos > skb_tail_pointer(skb)) {
  PKT_ERROR(pkt, "trying to split beyond end of packet\n");
  return ((void*)0);
 }


 tmppkt = cfpkt_create_pfx(len2nd + PKT_PREFIX + PKT_POSTFIX,
      PKT_PREFIX);
 if (tmppkt == ((void*)0))
  return ((void*)0);
 skb2 = pkt_to_skb(tmppkt);


 if (skb2 == ((void*)0))
  return ((void*)0);

 skb_put_data(skb2, split, len2nd);


 skb_trim(skb, pos);

 skb2->priority = skb->priority;
 return skb_to_pkt(skb2);
}
