
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct in6_addr {int* s6_addr; } ;


 int EINVAL ;
 int EIO ;




 int lowpan_fetch_skb (struct sk_buff*,int*,int) ;
 int pr_debug (char*,...) ;
 int raw_dump_inline (int *,char*,int*,int) ;

__attribute__((used)) static int lowpan_uncompress_multicast_daddr(struct sk_buff *skb,
          struct in6_addr *ipaddr,
          u8 address_mode)
{
 bool fail;

 switch (address_mode) {
 case 131:



  fail = lowpan_fetch_skb(skb, ipaddr->s6_addr, 16);
  break;
 case 130:



  ipaddr->s6_addr[0] = 0xFF;
  fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[1], 1);
  fail |= lowpan_fetch_skb(skb, &ipaddr->s6_addr[11], 5);
  break;
 case 129:



  ipaddr->s6_addr[0] = 0xFF;
  fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[1], 1);
  fail |= lowpan_fetch_skb(skb, &ipaddr->s6_addr[13], 3);
  break;
 case 128:



  ipaddr->s6_addr[0] = 0xFF;
  ipaddr->s6_addr[1] = 0x02;
  fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[15], 1);
  break;
 default:
  pr_debug("DAM value has a wrong value: 0x%x\n", address_mode);
  return -EINVAL;
 }

 if (fail) {
  pr_debug("Failed to fetch skb data\n");
  return -EIO;
 }

 raw_dump_inline(((void*)0), "Reconstructed ipv6 multicast addr is",
   ipaddr->s6_addr, 16);

 return 0;
}
