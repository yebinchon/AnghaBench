
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_rhash_cmp_arg {int key; } ;


 int jhash (int ,int ,int ) ;

__attribute__((used)) static inline u32 nft_rhash_key(const void *data, u32 len, u32 seed)
{
 const struct nft_rhash_cmp_arg *arg = data;

 return jhash(arg->key, len, seed);
}
