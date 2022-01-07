
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void fdt32_st(void *property, uint32_t value)
{
 uint8_t *bp = property;

 bp[0] = value >> 24;
 bp[1] = (value >> 16) & 0xff;
 bp[2] = (value >> 8) & 0xff;
 bp[3] = value & 0xff;
}
