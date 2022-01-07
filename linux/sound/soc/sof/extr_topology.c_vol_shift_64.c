
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u32 vol_shift_64(u64 i, u32 x)
{

 if (x > 32)
  x = 32;

 if (x == 0)
  return (u32)i;

 return (u32)(((i >> (x - 1)) + 1) >> 1);
}
