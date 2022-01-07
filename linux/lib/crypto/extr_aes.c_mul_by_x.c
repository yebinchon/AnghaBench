
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 mul_by_x(u32 w)
{
 u32 x = w & 0x7f7f7f7f;
 u32 y = w & 0x80808080;


 return (x << 1) ^ (y >> 7) * 0x1b;
}
