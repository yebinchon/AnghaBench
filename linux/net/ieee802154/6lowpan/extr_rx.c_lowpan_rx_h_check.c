
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
typedef int __le16 ;


 int ieee802154_get_fc_from_skb (struct sk_buff*) ;
 int ieee802154_is_data (int ) ;
 int ieee802154_skb_is_intra_pan_addressing (int ,struct sk_buff*) ;
 scalar_t__ lowpan_is_nalp (int ) ;
 scalar_t__ lowpan_is_reserved (int ) ;
 int * skb_network_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool lowpan_rx_h_check(struct sk_buff *skb)
{
 __le16 fc = ieee802154_get_fc_from_skb(skb);


 if (!ieee802154_is_data(fc) ||
     !ieee802154_skb_is_intra_pan_addressing(fc, skb))
  return 0;


 if (unlikely(!skb->len))
  return 0;

 if (lowpan_is_nalp(*skb_network_header(skb)) ||
     lowpan_is_reserved(*skb_network_header(skb)))
  return 0;

 return 1;
}
