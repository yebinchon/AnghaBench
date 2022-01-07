
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 map_other(u32 x)
{
 return ((x & 0x3) << 8) |
  ((x & 0x1c) << 18) |
  ((x & 0x60) << 19);
}
