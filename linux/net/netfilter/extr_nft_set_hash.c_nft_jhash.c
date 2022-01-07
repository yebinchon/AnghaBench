
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int klen; } ;
struct nft_hash {int buckets; int seed; } ;
struct nft_data {int dummy; } ;


 int jhash (struct nft_data const*,int,int ) ;
 int jhash_1word (int ,int ) ;
 struct nft_data* nft_set_ext_key (struct nft_set_ext const*) ;
 int reciprocal_scale (int ,int ) ;

__attribute__((used)) static u32 nft_jhash(const struct nft_set *set, const struct nft_hash *priv,
       const struct nft_set_ext *ext)
{
 const struct nft_data *key = nft_set_ext_key(ext);
 u32 hash, k1;

 if (set->klen == 4) {
  k1 = *(u32 *)key;
  hash = jhash_1word(k1, priv->seed);
 } else {
  hash = jhash(key, set->klen, priv->seed);
 }
 hash = reciprocal_scale(hash, priv->buckets);

 return hash;
}
