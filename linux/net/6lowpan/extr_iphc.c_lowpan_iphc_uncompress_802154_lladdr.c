
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct in6_addr {int* s6_addr; int * s6_addr16; } ;
struct ieee802154_addr {int mode; int short_addr; int extended_addr; } ;


 int EUI64_ADDR_LEN ;


 int WARN_ON_ONCE (int) ;
 int ieee802154_le16_to_be16 (int *,int *) ;
 int ieee802154_le64_to_be64 (int *,int *) ;
 int lowpan_iphc_uncompress_eui64_lladdr (struct in6_addr*,int *) ;

__attribute__((used)) static inline void
lowpan_iphc_uncompress_802154_lladdr(struct in6_addr *ipaddr,
         const void *lladdr)
{
 const struct ieee802154_addr *addr = lladdr;
 u8 eui64[EUI64_ADDR_LEN];

 switch (addr->mode) {
 case 129:
  ieee802154_le64_to_be64(eui64, &addr->extended_addr);
  lowpan_iphc_uncompress_eui64_lladdr(ipaddr, eui64);
  break;
 case 128:






  ipaddr->s6_addr[0] = 0xFE;
  ipaddr->s6_addr[1] = 0x80;
  ipaddr->s6_addr[11] = 0xFF;
  ipaddr->s6_addr[12] = 0xFE;
  ieee802154_le16_to_be16(&ipaddr->s6_addr16[7],
     &addr->short_addr);
  break;
 default:

  WARN_ON_ONCE(1);
  break;
 }
}
