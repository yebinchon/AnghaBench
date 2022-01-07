
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u32 from64to32(u64 x)
{

 x = (x & 0xffffffff) + (x >> 32);

 x = (x & 0xffffffff) + (x >> 32);
 return (u32)x;
}
