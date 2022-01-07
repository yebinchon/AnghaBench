
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * a6; int a4; } ;
typedef TYPE_1__ xfrm_address_t ;
typedef int u8 ;
typedef unsigned long u32 ;
typedef int u16 ;




 int memcmp (int *,int *,unsigned int) ;
 unsigned long ntohl (int ) ;

__attribute__((used)) static int xfrm_policy_addr_delta(const xfrm_address_t *a,
      const xfrm_address_t *b,
      u8 prefixlen, u16 family)
{
 unsigned int pdw, pbi;
 int delta = 0;

 switch (family) {
 case 129:
  if (sizeof(long) == 4 && prefixlen == 0)
   return ntohl(a->a4) - ntohl(b->a4);
  return (ntohl(a->a4) & ((~0UL << (32 - prefixlen)))) -
         (ntohl(b->a4) & ((~0UL << (32 - prefixlen))));
 case 128:
  pdw = prefixlen >> 5;
  pbi = prefixlen & 0x1f;

  if (pdw) {
   delta = memcmp(a->a6, b->a6, pdw << 2);
   if (delta)
    return delta;
  }
  if (pbi) {
   u32 mask = ~0u << (32 - pbi);

   delta = (ntohl(a->a6[pdw]) & mask) -
    (ntohl(b->a6[pdw]) & mask);
  }
  break;
 default:
  break;
 }

 return delta;
}
