
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const __be32 ;



__attribute__((used)) static inline __be32 hmark_addr6_mask(const __be32 *addr32, const __be32 *mask)
{
 return (addr32[0] & mask[0]) ^
        (addr32[1] & mask[1]) ^
        (addr32[2] & mask[2]) ^
        (addr32[3] & mask[3]);
}
