
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef int __u8 ;


 unsigned int __xfrm6_pref_hash (int const*,int ) ;

__attribute__((used)) static inline unsigned int __xfrm6_dpref_spref_hash(const xfrm_address_t *daddr,
          const xfrm_address_t *saddr,
          __u8 dbits,
          __u8 sbits)
{
 return __xfrm6_pref_hash(daddr, dbits) ^
        __xfrm6_pref_hash(saddr, sbits);
}
