
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ security_enabled; } ;
struct ieee802154_hdr {int sec; TYPE_1__ fc; } ;


 int EINVAL ;
 size_t IEEE802154_SCF_KEY_ID_MODE (size_t const) ;
 scalar_t__ ieee802154_hdr_get_sechdr (size_t const*,int *) ;
 int ieee802154_hdr_peek_addrs (struct sk_buff const*,struct ieee802154_hdr*) ;
 int* ieee802154_sechdr_lengths ;
 size_t* skb_mac_header (struct sk_buff const*) ;
 size_t const* skb_tail_pointer (struct sk_buff const*) ;

int
ieee802154_hdr_peek(const struct sk_buff *skb, struct ieee802154_hdr *hdr)
{
 const u8 *buf = skb_mac_header(skb);
 int pos;

 pos = ieee802154_hdr_peek_addrs(skb, hdr);
 if (pos < 0)
  return -EINVAL;

 if (hdr->fc.security_enabled) {
  u8 key_id_mode = IEEE802154_SCF_KEY_ID_MODE(*(buf + pos));
  int want = pos + ieee802154_sechdr_lengths[key_id_mode];

  if (buf + want > skb_tail_pointer(skb))
   return -EINVAL;

  pos += ieee802154_hdr_get_sechdr(buf + pos, &hdr->sec);
 }

 return pos;
}
