
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; scalar_t__ head; } ;
struct net_device {int dummy; } ;


 scalar_t__ ETH_ZLEN ;
 int GFP_ATOMIC ;
 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ __skb_put_padto (struct sk_buff*,scalar_t__,int) ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int consume_skb (struct sk_buff*) ;
 int skb_copy_and_csum_dev (struct sk_buff*,int ) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_put_padto (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int skb_set_transport_header (struct sk_buff*,scalar_t__) ;
 int skb_tailroom (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *ksz_common_xmit(struct sk_buff *skb,
           struct net_device *dev, int len)
{
 struct sk_buff *nskb;
 int padlen;

 padlen = (skb->len >= ETH_ZLEN) ? 0 : ETH_ZLEN - skb->len;

 if (skb_tailroom(skb) >= padlen + len) {

  if (__skb_put_padto(skb, skb->len + padlen, 0))
   return ((void*)0);

  nskb = skb;
 } else {
  nskb = alloc_skb(NET_IP_ALIGN + skb->len +
     padlen + len, GFP_ATOMIC);
  if (!nskb)
   return ((void*)0);
  skb_reserve(nskb, NET_IP_ALIGN);

  skb_reset_mac_header(nskb);
  skb_set_network_header(nskb,
           skb_network_header(skb) - skb->head);
  skb_set_transport_header(nskb,
      skb_transport_header(skb) - skb->head);
  skb_copy_and_csum_dev(skb, skb_put(nskb, skb->len));




  if (skb_put_padto(nskb, nskb->len + padlen))
   return ((void*)0);

  consume_skb(skb);
 }

 return nskb;
}
