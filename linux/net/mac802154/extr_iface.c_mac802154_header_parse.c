
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; int extended_addr; } ;
struct ieee802154_hdr {TYPE_1__ source; } ;


 scalar_t__ IEEE802154_ADDR_LONG ;
 int IEEE802154_EXTENDED_ADDR_LEN ;
 scalar_t__ ieee802154_hdr_peek_addrs (struct sk_buff const*,struct ieee802154_hdr*) ;
 int ieee802154_le64_to_be64 (unsigned char*,int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static int
mac802154_header_parse(const struct sk_buff *skb, unsigned char *haddr)
{
 struct ieee802154_hdr hdr;

 if (ieee802154_hdr_peek_addrs(skb, &hdr) < 0) {
  pr_debug("malformed packet\n");
  return 0;
 }

 if (hdr.source.mode == IEEE802154_ADDR_LONG) {
  ieee802154_le64_to_be64(haddr, &hdr.source.extended_addr);
  return IEEE802154_EXTENDED_ADDR_LEN;
 }

 return 0;
}
