
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee802154_hdr {int dummy; } ;


 int EINVAL ;
 scalar_t__ ieee802154_hdr_get_addrs (int const*,struct ieee802154_hdr*) ;
 int ieee802154_hdr_minlen (struct ieee802154_hdr*) ;
 int memcpy (struct ieee802154_hdr*,int const*,int) ;
 int * skb_mac_header (struct sk_buff const*) ;
 int const* skb_tail_pointer (struct sk_buff const*) ;

int
ieee802154_hdr_peek_addrs(const struct sk_buff *skb, struct ieee802154_hdr *hdr)
{
 const u8 *buf = skb_mac_header(skb);
 int pos = 3, rc;

 if (buf + 3 > skb_tail_pointer(skb))
  return -EINVAL;

 memcpy(hdr, buf, 3);

 rc = ieee802154_hdr_minlen(hdr);
 if (rc < 0 || buf + rc > skb_tail_pointer(skb))
  return -EINVAL;

 pos += ieee802154_hdr_get_addrs(buf + pos, hdr);
 return pos;
}
