
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static inline void fdt64_st(void *property, uint64_t value)
{
 uint8_t *bp = property;

 bp[0] = value >> 56;
 bp[1] = (value >> 48) & 0xff;
 bp[2] = (value >> 40) & 0xff;
 bp[3] = (value >> 32) & 0xff;
 bp[4] = (value >> 24) & 0xff;
 bp[5] = (value >> 16) & 0xff;
 bp[6] = (value >> 8) & 0xff;
 bp[7] = value & 0xff;
}
