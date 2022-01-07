
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct lowpan_iphc_ctx {int plen; int pfx; } ;
struct in6_addr {int* s6_addr; } ;


 int EIO ;
 int ipv6_addr_prefix (struct in6_addr*,int *,int) ;
 int lowpan_fetch_skb (struct sk_buff*,int*,int) ;
 int memcpy (int*,struct in6_addr*,int) ;

__attribute__((used)) static int lowpan_uncompress_multicast_ctx_daddr(struct sk_buff *skb,
       struct lowpan_iphc_ctx *ctx,
       struct in6_addr *ipaddr,
       u8 address_mode)
{
 struct in6_addr network_pfx = {};
 bool fail;

 ipaddr->s6_addr[0] = 0xFF;
 fail = lowpan_fetch_skb(skb, &ipaddr->s6_addr[1], 2);
 fail |= lowpan_fetch_skb(skb, &ipaddr->s6_addr[12], 4);
 if (fail)
  return -EIO;


 ipaddr->s6_addr[3] = ctx->plen;

 ipv6_addr_prefix(&network_pfx, &ctx->pfx, ctx->plen);

 memcpy(&ipaddr->s6_addr[4], &network_pfx, 8);

 return 0;
}
