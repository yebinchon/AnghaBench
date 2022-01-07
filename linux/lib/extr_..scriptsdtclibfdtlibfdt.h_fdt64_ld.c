
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int fdt64_t ;



__attribute__((used)) static inline uint64_t fdt64_ld(const fdt64_t *p)
{
 const uint8_t *bp = (const uint8_t *)p;

 return ((uint64_t)bp[0] << 56)
  | ((uint64_t)bp[1] << 48)
  | ((uint64_t)bp[2] << 40)
  | ((uint64_t)bp[3] << 32)
  | ((uint64_t)bp[4] << 24)
  | ((uint64_t)bp[5] << 16)
  | ((uint64_t)bp[6] << 8)
  | bp[7];
}
