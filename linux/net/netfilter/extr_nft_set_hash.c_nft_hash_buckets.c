
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int roundup_pow_of_two (int) ;

__attribute__((used)) static u32 nft_hash_buckets(u32 size)
{
 return roundup_pow_of_two(size * 4 / 3);
}
