
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct ieee802154_hdr {int source; int dest; } ;


 int EINVAL ;
 scalar_t__ ieee802154_hdr_peek_addrs (struct sk_buff*,struct ieee802154_hdr*) ;
 int lowpan_header_decompress (struct sk_buff*,int ,int *,int *) ;

int lowpan_iphc_decompress(struct sk_buff *skb)
{
 struct ieee802154_hdr hdr;

 if (ieee802154_hdr_peek_addrs(skb, &hdr) < 0)
  return -EINVAL;

 return lowpan_header_decompress(skb, skb->dev, &hdr.dest, &hdr.source);
}
