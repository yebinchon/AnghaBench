
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 mul_by_x2(u32 w)
{
 u32 x = w & 0x3f3f3f3f;
 u32 y = w & 0x80808080;
 u32 z = w & 0x40404040;


 return (x << 2) ^ (y >> 7) * 0x36 ^ (z >> 6) * 0x1b;
}
