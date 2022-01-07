
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct in6_addr {int* s6_addr; } ;
struct TYPE_2__ {int lltype; } ;


 int EINVAL ;
 int EIO ;
 TYPE_1__* lowpan_dev (struct net_device const*) ;
 int lowpan_fetch_skb (struct sk_buff*,int*,int) ;
 int lowpan_iphc_uncompress_802154_lladdr (struct in6_addr*,void const*) ;
 int lowpan_iphc_uncompress_lladdr (struct net_device const*,struct in6_addr*,void const*) ;
 int pr_debug (char*,...) ;
 int raw_dump_inline (int *,char*,int*,int) ;

__attribute__((used)) static int lowpan_iphc_uncompress_addr(struct sk_buff *skb,
           const struct net_device *dev,
           struct in6_addr *ipaddr,
           u8 address_mode, const void *lladdr)
{
 bool fail;

 switch (address_mode) {

 case 135:

  fail = lowpan_fetch_skb(skb, ipaddr->s6_addr, 16);
  break;
 case 131:
 case 134:

  ipaddr->s6_addr[0] = 0xFE;
  ipaddr->s6_addr[1] = 0x80;
  fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[8], 8);
  break;
 case 130:
 case 133:

  ipaddr->s6_addr[0] = 0xFE;
  ipaddr->s6_addr[1] = 0x80;
  ipaddr->s6_addr[11] = 0xFF;
  ipaddr->s6_addr[12] = 0xFE;
  fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[14], 2);
  break;
 case 129:
 case 132:
  fail = 0;
  switch (lowpan_dev(dev)->lltype) {
  case 128:
   lowpan_iphc_uncompress_802154_lladdr(ipaddr, lladdr);
   break;
  default:
   lowpan_iphc_uncompress_lladdr(dev, ipaddr, lladdr);
   break;
  }
  break;
 default:
  pr_debug("Invalid address mode value: 0x%x\n", address_mode);
  return -EINVAL;
 }

 if (fail) {
  pr_debug("Failed to fetch skb data\n");
  return -EIO;
 }

 raw_dump_inline(((void*)0), "Reconstructed ipv6 addr is",
   ipaddr->s6_addr, 16);

 return 0;
}
