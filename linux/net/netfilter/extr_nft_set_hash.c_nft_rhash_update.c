
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_rhash_elem {struct nft_set_ext ext; int node; } ;
struct nft_rhash_cmp_arg {int const* key; struct nft_set* set; int genmask; } ;
struct nft_rhash {int ht; } ;
struct nft_regs {int dummy; } ;
struct nft_expr {int dummy; } ;


 scalar_t__ IS_ERR (struct nft_rhash_elem*) ;
 int NFT_GENMASK_ANY ;
 int nft_rhash_params ;
 int nft_set_elem_destroy (struct nft_set*,struct nft_rhash_elem*,int) ;
 struct nft_rhash* nft_set_priv (struct nft_set*) ;
 struct nft_rhash_elem* rhashtable_lookup (int *,struct nft_rhash_cmp_arg*,int ) ;
 struct nft_rhash_elem* rhashtable_lookup_get_insert_key (int *,struct nft_rhash_cmp_arg*,int *,int ) ;

__attribute__((used)) static bool nft_rhash_update(struct nft_set *set, const u32 *key,
        void *(*new)(struct nft_set *,
       const struct nft_expr *,
       struct nft_regs *regs),
        const struct nft_expr *expr,
        struct nft_regs *regs,
        const struct nft_set_ext **ext)
{
 struct nft_rhash *priv = nft_set_priv(set);
 struct nft_rhash_elem *he, *prev;
 struct nft_rhash_cmp_arg arg = {
  .genmask = NFT_GENMASK_ANY,
  .set = set,
  .key = key,
 };

 he = rhashtable_lookup(&priv->ht, &arg, nft_rhash_params);
 if (he != ((void*)0))
  goto out;

 he = new(set, expr, regs);
 if (he == ((void*)0))
  goto err1;

 prev = rhashtable_lookup_get_insert_key(&priv->ht, &arg, &he->node,
      nft_rhash_params);
 if (IS_ERR(prev))
  goto err2;


 if (prev) {
  nft_set_elem_destroy(set, he, 1);
  he = prev;
 }

out:
 *ext = &he->ext;
 return 1;

err2:
 nft_set_elem_destroy(set, he, 1);
err1:
 return 0;
}
