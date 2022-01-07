
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lowpan_iphc_ctx {int plen; int pfx; } ;
struct in6_addr {int* s6_addr; } ;
struct TYPE_2__ {int lltype; } ;


 int EINVAL ;
 int EIO ;
 int ipv6_addr_prefix_copy (struct in6_addr*,int *,int ) ;
 TYPE_1__* lowpan_dev (struct net_device const*) ;
 int lowpan_fetch_skb (struct sk_buff*,int*,int) ;
 int lowpan_iphc_uncompress_802154_lladdr (struct in6_addr*,void const*) ;
 int lowpan_iphc_uncompress_lladdr (struct net_device const*,struct in6_addr*,void const*) ;
 int pr_debug (char*,...) ;
 int raw_dump_inline (int *,char*,int*,int) ;

__attribute__((used)) static int lowpan_iphc_uncompress_ctx_addr(struct sk_buff *skb,
        const struct net_device *dev,
        const struct lowpan_iphc_ctx *ctx,
        struct in6_addr *ipaddr,
        u8 address_mode, const void *lladdr)
{
 bool fail;

 switch (address_mode) {

 case 135:
  fail = 0;





  break;
 case 131:
 case 134:
  fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[8], 8);
  ipv6_addr_prefix_copy(ipaddr, &ctx->pfx, ctx->plen);
  break;
 case 130:
 case 133:
  ipaddr->s6_addr[11] = 0xFF;
  ipaddr->s6_addr[12] = 0xFE;
  fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[14], 2);
  ipv6_addr_prefix_copy(ipaddr, &ctx->pfx, ctx->plen);
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
  ipv6_addr_prefix_copy(ipaddr, &ctx->pfx, ctx->plen);
  break;
 default:
  pr_debug("Invalid sam value: 0x%x\n", address_mode);
  return -EINVAL;
 }

 if (fail) {
  pr_debug("Failed to fetch skb data\n");
  return -EIO;
 }

 raw_dump_inline(((void*)0),
   "Reconstructed context based ipv6 src addr is",
   ipaddr->s6_addr, 16);

 return 0;
}
