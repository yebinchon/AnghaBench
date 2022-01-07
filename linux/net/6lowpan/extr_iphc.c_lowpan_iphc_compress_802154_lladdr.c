
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr; int * s6_addr16; } ;
struct ieee802154_addr {int mode; int short_addr; int extended_addr; } ;


 int EUI64_ADDR_LEN ;


 int WARN_ON_ONCE (int) ;
 int ieee802154_le16_to_be16 (int *,int *) ;
 int ieee802154_le64_to_be64 (unsigned char**,int *) ;
 int ipv6_addr_equal (struct in6_addr*,struct in6_addr const*) ;
 int is_addr_mac_addr_based (struct in6_addr const*,unsigned char*) ;

__attribute__((used)) static inline bool
lowpan_iphc_compress_802154_lladdr(const struct in6_addr *ipaddr,
       const void *lladdr)
{
 const struct ieee802154_addr *addr = lladdr;
 unsigned char extended_addr[EUI64_ADDR_LEN];
 bool lladdr_compress = 0;
 struct in6_addr tmp = {};

 switch (addr->mode) {
 case 129:
  ieee802154_le64_to_be64(&extended_addr, &addr->extended_addr);
  if (is_addr_mac_addr_based(ipaddr, extended_addr))
   lladdr_compress = 1;
  break;
 case 128:






  tmp.s6_addr[0] = 0xFE;
  tmp.s6_addr[1] = 0x80;
  tmp.s6_addr[11] = 0xFF;
  tmp.s6_addr[12] = 0xFE;
  ieee802154_le16_to_be16(&tmp.s6_addr16[7],
     &addr->short_addr);
  if (ipv6_addr_equal(&tmp, ipaddr))
   lladdr_compress = 1;
  break;
 default:

  WARN_ON_ONCE(1);
  break;
 }

 return lladdr_compress;
}
