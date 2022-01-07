
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct lowpan_iphc_ctx {int plen; int pfx; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct lowpan_iphc_ctx* table; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;


 int LOWPAN_IPHC_CTX_TABLE_SIZE ;
 int ipv6_addr_prefix (struct in6_addr*,struct in6_addr const*,int) ;
 scalar_t__ ipv6_prefix_equal (struct in6_addr*,int *,int) ;
 TYPE_2__* lowpan_dev (struct net_device const*) ;
 int lowpan_iphc_ctx_is_active (struct lowpan_iphc_ctx*) ;
 int lowpan_iphc_ctx_is_compression (struct lowpan_iphc_ctx*) ;

__attribute__((used)) static struct lowpan_iphc_ctx *
lowpan_iphc_ctx_get_by_addr(const struct net_device *dev,
       const struct in6_addr *addr)
{
 struct lowpan_iphc_ctx *table = lowpan_dev(dev)->ctx.table;
 struct lowpan_iphc_ctx *ret = ((void*)0);
 struct in6_addr addr_pfx;
 u8 addr_plen;
 int i;

 for (i = 0; i < LOWPAN_IPHC_CTX_TABLE_SIZE; i++) {



  if (!lowpan_iphc_ctx_is_active(&table[i]) ||
      !lowpan_iphc_ctx_is_compression(&table[i]))
   continue;

  ipv6_addr_prefix(&addr_pfx, addr, table[i].plen);




  if (table[i].plen < 64)
   addr_plen = 64;
  else
   addr_plen = table[i].plen;

  if (ipv6_prefix_equal(&addr_pfx, &table[i].pfx, addr_plen)) {

   if (!ret) {
    ret = &table[i];
    continue;
   }


   if (table[i].plen > ret->plen)
    ret = &table[i];
  }
 }

 return ret;
}
