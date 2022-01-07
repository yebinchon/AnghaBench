
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u8 ;



__attribute__((used)) static inline u32 __bits2mask32(__u8 bits)
{
 u32 mask32 = 0xffffffff;

 if (bits == 0)
  mask32 = 0;
 else if (bits < 32)
  mask32 <<= (32 - bits);

 return mask32;
}
