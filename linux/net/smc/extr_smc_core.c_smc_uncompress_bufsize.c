
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;



int smc_uncompress_bufsize(u8 compressed)
{
 u32 size;

 size = 0x00000001 << (((int)compressed) + 14);
 return (int)size;
}
