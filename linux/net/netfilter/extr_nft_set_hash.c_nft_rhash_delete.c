
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set {int dummy; } ;
struct nft_rhash_elem {int node; } ;
struct nft_rhash_cmp_arg {int const* key; struct nft_set const* set; int genmask; } ;
struct nft_rhash {int ht; } ;


 int NFT_GENMASK_ANY ;
 int nft_rhash_params ;
 struct nft_rhash* nft_set_priv (struct nft_set const*) ;
 struct nft_rhash_elem* rhashtable_lookup (int *,struct nft_rhash_cmp_arg*,int ) ;
 scalar_t__ rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static bool nft_rhash_delete(const struct nft_set *set,
        const u32 *key)
{
 struct nft_rhash *priv = nft_set_priv(set);
 struct nft_rhash_cmp_arg arg = {
  .genmask = NFT_GENMASK_ANY,
  .set = set,
  .key = key,
 };
 struct nft_rhash_elem *he;

 he = rhashtable_lookup(&priv->ht, &arg, nft_rhash_params);
 if (he == ((void*)0))
  return 0;

 return rhashtable_remove_fast(&priv->ht, &he->node, nft_rhash_params) == 0;
}
