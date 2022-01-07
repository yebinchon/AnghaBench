
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u32 CCSR_DMA_ECLNDAR_ADDR(u64 x)
{
 return (x >> 32) & 0xf;
}
