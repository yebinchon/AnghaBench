
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int parity(unsigned int x)
{




 x ^= x >> 1;
 x ^= x >> 2;
 x = (x & 0x11111111U) * 0x11111111U;
 return (x >> 28) & 1;
}
