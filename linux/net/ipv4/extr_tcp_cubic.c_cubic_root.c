
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 scalar_t__ div64_u64 (int,int) ;
 int fls64 (int) ;

__attribute__((used)) static u32 cubic_root(u64 a)
{
 u32 x, b, shift;
 static const u8 v[] = {
                0, 54, 54, 54, 118, 118, 118, 118,
              123, 129, 134, 138, 143, 147, 151, 156,
              157, 161, 164, 168, 170, 173, 176, 179,
              181, 185, 187, 190, 192, 194, 197, 199,
              200, 202, 204, 206, 209, 211, 213, 215,
              217, 219, 221, 222, 224, 225, 227, 229,
              231, 232, 234, 236, 237, 239, 240, 242,
              244, 245, 246, 248, 250, 251, 252, 254,
 };

 b = fls64(a);
 if (b < 7) {

  return ((u32)v[(u32)a] + 35) >> 6;
 }

 b = ((b * 84) >> 8) - 1;
 shift = (a >> (b * 3));

 x = ((u32)(((u32)v[shift] + 10) << b)) >> 6;







 x = (2 * x + (u32)div64_u64(a, (u64)x * (u64)(x - 1)));
 x = ((x * 341) >> 10);
 return x;
}
