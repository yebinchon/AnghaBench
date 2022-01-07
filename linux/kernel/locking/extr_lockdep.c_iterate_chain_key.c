
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int __jhash_mix (int,int,int) ;

__attribute__((used)) static inline u64 iterate_chain_key(u64 key, u32 idx)
{
 u32 k0 = key, k1 = key >> 32;

 __jhash_mix(idx, k0, k1);

 return k0 | (u64)k1 << 32;
}
