
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int swahw32 (int ) ;

__attribute__((used)) static void memcpy_swahw32(u8 *dest, u8 *src, unsigned int n)
{
 unsigned int i;

 for (i = 0; i < n / 4; i++)
  ((u32 *)dest)[i] = swahw32(((u32 *)src)[i]);
}
