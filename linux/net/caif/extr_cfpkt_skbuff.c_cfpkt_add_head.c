
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct cfpkt {int dummy; } ;


 int EPROTO ;
 int PKT_ERROR (struct cfpkt*,char*) ;
 int is_erronous (struct cfpkt*) ;
 int memcpy (int *,int const*,int ) ;
 struct sk_buff* pkt_to_skb (struct cfpkt*) ;
 int skb_cow_data (struct sk_buff*,int ,struct sk_buff**) ;
 int skb_headroom (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

int cfpkt_add_head(struct cfpkt *pkt, const void *data2, u16 len)
{
 struct sk_buff *skb = pkt_to_skb(pkt);
 struct sk_buff *lastskb;
 u8 *to;
 const u8 *data = data2;
 int ret;
 if (unlikely(is_erronous(pkt)))
  return -EPROTO;
 if (unlikely(skb_headroom(skb) < len)) {
  PKT_ERROR(pkt, "no headroom\n");
  return -EPROTO;
 }


 ret = skb_cow_data(skb, 0, &lastskb);
 if (unlikely(ret < 0)) {
  PKT_ERROR(pkt, "cow failed\n");
  return ret;
 }

 to = skb_push(skb, len);
 memcpy(to, data, len);
 return 0;
}
