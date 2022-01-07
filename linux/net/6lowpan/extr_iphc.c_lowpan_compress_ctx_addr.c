
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int tmp ;
struct net_device {int dummy; } ;
struct lowpan_iphc_ctx {int plen; int pfx; } ;
struct in6_addr {int* s6_addr; } ;
struct TYPE_2__ {int lltype; } ;


 size_t LOWPAN_IPHC_DAM_00 ;
 size_t LOWPAN_IPHC_DAM_01 ;
 size_t LOWPAN_IPHC_DAM_10 ;
 size_t LOWPAN_IPHC_DAM_11 ;

 int WARN_ONCE (int,char*) ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,struct in6_addr const*) ;
 int ipv6_addr_prefix_copy (struct in6_addr*,int *,int ) ;
 TYPE_1__* lowpan_dev (struct net_device const*) ;
 int lowpan_iphc_addr_equal (struct net_device const*,struct lowpan_iphc_ctx const*,struct in6_addr const*,unsigned char const*) ;
 int lowpan_iphc_compress_ctx_802154_lladdr (struct in6_addr const*,struct lowpan_iphc_ctx const*,unsigned char const*) ;
 size_t* lowpan_iphc_dam_to_sam_value ;
 int lowpan_push_hc_data (size_t**,int*,int) ;
 int memcpy (int*,int*,int) ;
 int memset (struct in6_addr*,int ,int) ;

__attribute__((used)) static u8 lowpan_compress_ctx_addr(u8 **hc_ptr, const struct net_device *dev,
       const struct in6_addr *ipaddr,
       const struct lowpan_iphc_ctx *ctx,
       const unsigned char *lladdr, bool sam)
{
 struct in6_addr tmp = {};
 u8 dam;

 switch (lowpan_dev(dev)->lltype) {
 case 128:
  if (lowpan_iphc_compress_ctx_802154_lladdr(ipaddr, ctx,
          lladdr)) {
   dam = LOWPAN_IPHC_DAM_11;
   goto out;
  }
  break;
 default:
  if (lowpan_iphc_addr_equal(dev, ctx, ipaddr, lladdr)) {
   dam = LOWPAN_IPHC_DAM_11;
   goto out;
  }
  break;
 }

 memset(&tmp, 0, sizeof(tmp));

 tmp.s6_addr[11] = 0xFF;
 tmp.s6_addr[12] = 0xFE;
 memcpy(&tmp.s6_addr[14], &ipaddr->s6_addr[14], 2);

 ipv6_addr_prefix_copy(&tmp, &ctx->pfx, ctx->plen);
 if (ipv6_addr_equal(&tmp, ipaddr)) {
  lowpan_push_hc_data(hc_ptr, &ipaddr->s6_addr[14], 2);
  dam = LOWPAN_IPHC_DAM_10;
  goto out;
 }

 memset(&tmp, 0, sizeof(tmp));

 memcpy(&tmp.s6_addr[8], &ipaddr->s6_addr[8], 8);

 ipv6_addr_prefix_copy(&tmp, &ctx->pfx, ctx->plen);
 if (ipv6_addr_equal(&tmp, ipaddr)) {
  lowpan_push_hc_data(hc_ptr, &ipaddr->s6_addr[8], 8);
  dam = LOWPAN_IPHC_DAM_01;
  goto out;
 }

 WARN_ONCE(1, "context found but no address mode matched\n");
 return LOWPAN_IPHC_DAM_00;
out:

 if (sam)
  return lowpan_iphc_dam_to_sam_value[dam];
 else
  return dam;
}
