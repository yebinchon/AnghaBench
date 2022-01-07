
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;


 int EPROTO ;
 int PKT_ERROR (struct cfpkt*,char*) ;
 scalar_t__ PKT_LEN_WHEN_EXTENDING ;
 int is_erronous (struct cfpkt*) ;
 scalar_t__ likely (void const*) ;
 int memcpy (int *,void const*,scalar_t__) ;
 struct sk_buff* pkt_to_skb (struct cfpkt*) ;
 int * pskb_put (struct sk_buff*,struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 scalar_t__ skb_cow_data (struct sk_buff*,scalar_t__,struct sk_buff**) ;
 scalar_t__ skb_shared (struct sk_buff*) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int cfpkt_add_body(struct cfpkt *pkt, const void *data, u16 len)
{
 struct sk_buff *skb = pkt_to_skb(pkt);
 struct sk_buff *lastskb;
 u8 *to;
 u16 addlen = 0;


 if (unlikely(is_erronous(pkt)))
  return -EPROTO;

 lastskb = skb;


 if (unlikely(skb_tailroom(skb) < len)) {
  if (likely(len < PKT_LEN_WHEN_EXTENDING))
   addlen = PKT_LEN_WHEN_EXTENDING;
  else
   addlen = len;
 }


 if (unlikely((addlen > 0) || skb_cloned(skb) || skb_shared(skb))) {


  if (unlikely(skb_cow_data(skb, addlen, &lastskb) < 0)) {
   PKT_ERROR(pkt, "cow failed\n");
   return -EPROTO;
  }
 }


 to = pskb_put(skb, lastskb, len);
 if (likely(data))
  memcpy(to, data, len);
 return 0;
}
