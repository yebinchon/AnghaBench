
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DEVID_HASH_MASK ;
 int jhash_2words (int,int,int ) ;

__attribute__((used)) static inline u32 devid_hashfn(u64 idx)
{
 return jhash_2words(idx, idx >> 32, 0) & DEVID_HASH_MASK;
}
