
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const __be32 ;




 int const hmark_addr6_mask (int const*,int const*) ;

__attribute__((used)) static inline __be32
hmark_addr_mask(int l3num, const __be32 *addr32, const __be32 *mask)
{
 switch (l3num) {
 case 129:
  return *addr32 & *mask;
 case 128:
  return hmark_addr6_mask(addr32, mask);
 }
 return 0;
}
