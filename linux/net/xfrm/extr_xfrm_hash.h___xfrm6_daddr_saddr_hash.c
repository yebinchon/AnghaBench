
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;


 unsigned int __xfrm6_addr_hash (int const*) ;

__attribute__((used)) static inline unsigned int __xfrm6_daddr_saddr_hash(const xfrm_address_t *daddr,
          const xfrm_address_t *saddr)
{
 return __xfrm6_addr_hash(daddr) ^ __xfrm6_addr_hash(saddr);
}
