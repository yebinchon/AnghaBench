
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int len; } ;
struct lowpan_802154_cb {int d_size; scalar_t__ d_offset; int d_tag; } ;
struct ipv6hdr {int dummy; } ;
typedef scalar_t__ __be16 ;


 int EIO ;
 scalar_t__ LOWPAN_DISPATCH_FRAGN ;
 scalar_t__ LOWPAN_FRAG_DGRAM_SIZE_HIGH_MASK ;
 scalar_t__ LOWPAN_FRAG_DGRAM_SIZE_HIGH_SHIFT ;
 int lowpan_fetch_skb (struct sk_buff*,scalar_t__*,int) ;
 int ntohs (scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lowpan_get_cb(struct sk_buff *skb, u8 frag_type,
    struct lowpan_802154_cb *cb)
{
 bool fail;
 u8 high = 0, low = 0;
 __be16 d_tag = 0;

 fail = lowpan_fetch_skb(skb, &high, 1);
 fail |= lowpan_fetch_skb(skb, &low, 1);



 cb->d_size = (high & LOWPAN_FRAG_DGRAM_SIZE_HIGH_MASK) <<
  LOWPAN_FRAG_DGRAM_SIZE_HIGH_SHIFT | low;
 fail |= lowpan_fetch_skb(skb, &d_tag, 2);
 cb->d_tag = ntohs(d_tag);

 if (frag_type == LOWPAN_DISPATCH_FRAGN) {
  fail |= lowpan_fetch_skb(skb, &cb->d_offset, 1);
 } else {
  skb_reset_network_header(skb);
  cb->d_offset = 0;

  fail |= cb->d_size < sizeof(struct ipv6hdr);

  fail |= !skb->len;
 }

 if (unlikely(fail))
  return -EIO;

 return 0;
}
