
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ tail; scalar_t__ end; int data; } ;
struct cfpkt {int dummy; } ;


 scalar_t__ PKT_POSTFIX ;
 scalar_t__ PKT_PREFIX ;
 struct cfpkt* cfpkt_create (scalar_t__) ;
 int cfpkt_destroy (struct cfpkt*) ;
 scalar_t__ is_erronous (struct cfpkt*) ;
 struct sk_buff* pkt_to_skb (struct cfpkt*) ;
 scalar_t__ skb_headlen (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int ,scalar_t__) ;
 struct cfpkt* skb_to_pkt (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

struct cfpkt *cfpkt_append(struct cfpkt *dstpkt,
      struct cfpkt *addpkt,
      u16 expectlen)
{
 struct sk_buff *dst = pkt_to_skb(dstpkt);
 struct sk_buff *add = pkt_to_skb(addpkt);
 u16 addlen = skb_headlen(add);
 u16 neededtailspace;
 struct sk_buff *tmp;
 u16 dstlen;
 u16 createlen;
 if (unlikely(is_erronous(dstpkt) || is_erronous(addpkt))) {
  return dstpkt;
 }
 if (expectlen > addlen)
  neededtailspace = expectlen;
 else
  neededtailspace = addlen;

 if (dst->tail + neededtailspace > dst->end) {

  struct cfpkt *tmppkt;
  dstlen = skb_headlen(dst);
  createlen = dstlen + neededtailspace;
  tmppkt = cfpkt_create(createlen + PKT_PREFIX + PKT_POSTFIX);
  if (tmppkt == ((void*)0))
   return ((void*)0);
  tmp = pkt_to_skb(tmppkt);
  skb_put_data(tmp, dst->data, dstlen);
  cfpkt_destroy(dstpkt);
  dst = tmp;
 }
 skb_put_data(dst, add->data, skb_headlen(add));
 cfpkt_destroy(addpkt);
 return skb_to_pkt(dst);
}
