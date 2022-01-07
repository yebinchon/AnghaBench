
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; } ;
struct in6_addr {int dummy; } ;




 int WARN_ON_ONCE (int) ;
 int lowpan_iphc_uncompress_eui48_lladdr (struct in6_addr*,void const*) ;
 int lowpan_iphc_uncompress_eui64_lladdr (struct in6_addr*,void const*) ;

__attribute__((used)) static void lowpan_iphc_uncompress_lladdr(const struct net_device *dev,
       struct in6_addr *ipaddr,
       const void *lladdr)
{
 switch (dev->addr_len) {
 case 129:
  lowpan_iphc_uncompress_eui48_lladdr(ipaddr, lladdr);
  break;
 case 128:
  lowpan_iphc_uncompress_eui64_lladdr(ipaddr, lladdr);
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }
}
