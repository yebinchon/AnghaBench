
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int u8 ;
struct xfrm_selector {int prefixlen_s; int prefixlen_d; int saddr; int daddr; } ;




 unsigned int __xfrm4_dpref_spref_hash (int const*,int const*,int ,int ) ;
 unsigned int __xfrm6_dpref_spref_hash (int const*,int const*,int ,int ) ;

__attribute__((used)) static inline unsigned int __sel_hash(const struct xfrm_selector *sel,
          unsigned short family, unsigned int hmask,
          u8 dbits, u8 sbits)
{
 const xfrm_address_t *daddr = &sel->daddr;
 const xfrm_address_t *saddr = &sel->saddr;
 unsigned int h = 0;

 switch (family) {
 case 129:
  if (sel->prefixlen_d < dbits ||
      sel->prefixlen_s < sbits)
   return hmask + 1;

  h = __xfrm4_dpref_spref_hash(daddr, saddr, dbits, sbits);
  break;

 case 128:
  if (sel->prefixlen_d < dbits ||
      sel->prefixlen_s < sbits)
   return hmask + 1;

  h = __xfrm6_dpref_spref_hash(daddr, saddr, dbits, sbits);
  break;
 }
 h ^= (h >> 16);
 return h & hmask;
}
