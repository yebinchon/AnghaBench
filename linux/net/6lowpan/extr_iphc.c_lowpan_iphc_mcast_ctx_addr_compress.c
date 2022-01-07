
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lowpan_iphc_ctx {int dummy; } ;
struct in6_addr {int * s6_addr; } ;


 int LOWPAN_IPHC_DAM_00 ;
 int lowpan_push_hc_data (int **,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static u8 lowpan_iphc_mcast_ctx_addr_compress(u8 **hc_ptr,
           const struct lowpan_iphc_ctx *ctx,
           const struct in6_addr *ipaddr)
{
 u8 data[6];


 memcpy(data, &ipaddr->s6_addr[1], 2);

 memcpy(&data[1], &ipaddr->s6_addr[11], 4);
 lowpan_push_hc_data(hc_ptr, data, 6);

 return LOWPAN_IPHC_DAM_00;
}
