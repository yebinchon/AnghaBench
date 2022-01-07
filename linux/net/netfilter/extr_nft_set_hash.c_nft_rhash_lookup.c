
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_rhash_elem {struct nft_set_ext ext; } ;
struct nft_rhash_cmp_arg {int const* key; struct nft_set const* set; int genmask; } ;
struct nft_rhash {int ht; } ;
struct net {int dummy; } ;


 int nft_genmask_cur (struct net const*) ;
 int nft_rhash_params ;
 struct nft_rhash* nft_set_priv (struct nft_set const*) ;
 struct nft_rhash_elem* rhashtable_lookup (int *,struct nft_rhash_cmp_arg*,int ) ;

__attribute__((used)) static bool nft_rhash_lookup(const struct net *net, const struct nft_set *set,
        const u32 *key, const struct nft_set_ext **ext)
{
 struct nft_rhash *priv = nft_set_priv(set);
 const struct nft_rhash_elem *he;
 struct nft_rhash_cmp_arg arg = {
  .genmask = nft_genmask_cur(net),
  .set = set,
  .key = key,
 };

 he = rhashtable_lookup(&priv->ht, &arg, nft_rhash_params);
 if (he != ((void*)0))
  *ext = &he->ext;

 return !!he;
}
