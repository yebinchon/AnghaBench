
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a4; } ;
typedef TYPE_1__ xfrm_address_t ;
typedef int __u8 ;


 int __bits2mask32 (int ) ;
 unsigned int jhash_2words (int,int,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static inline unsigned int __xfrm4_dpref_spref_hash(const xfrm_address_t *daddr,
          const xfrm_address_t *saddr,
          __u8 dbits,
          __u8 sbits)
{
 return jhash_2words(ntohl(daddr->a4) & __bits2mask32(dbits),
       ntohl(saddr->a4) & __bits2mask32(sbits),
       0);
}
