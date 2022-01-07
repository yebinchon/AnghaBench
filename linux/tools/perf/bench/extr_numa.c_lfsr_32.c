
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT (int) ;

__attribute__((used)) static inline uint32_t lfsr_32(uint32_t lfsr)
{
 const uint32_t taps = BIT(1) | BIT(5) | BIT(6) | BIT(31);
 return (lfsr>>1) ^ ((0x0u - (lfsr & 0x1u)) & taps);
}
