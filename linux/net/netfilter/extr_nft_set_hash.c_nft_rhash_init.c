
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_params {int key_len; int nelem_hint; } ;
struct nlattr {int dummy; } ;
struct nft_set_desc {scalar_t__ size; } ;
struct nft_set {int flags; int klen; } ;
struct nft_rhash {int gc_work; int ht; } ;


 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int NFT_RHASH_ELEMENT_HINT ;
 int NFT_SET_TIMEOUT ;
 int nft_rhash_gc ;
 int nft_rhash_gc_init (struct nft_set const*) ;
 struct rhashtable_params nft_rhash_params ;
 struct nft_rhash* nft_set_priv (struct nft_set const*) ;
 int rhashtable_init (int *,struct rhashtable_params*) ;

__attribute__((used)) static int nft_rhash_init(const struct nft_set *set,
     const struct nft_set_desc *desc,
     const struct nlattr * const tb[])
{
 struct nft_rhash *priv = nft_set_priv(set);
 struct rhashtable_params params = nft_rhash_params;
 int err;

 params.nelem_hint = desc->size ?: NFT_RHASH_ELEMENT_HINT;
 params.key_len = set->klen;

 err = rhashtable_init(&priv->ht, &params);
 if (err < 0)
  return err;

 INIT_DEFERRABLE_WORK(&priv->gc_work, nft_rhash_gc);
 if (set->flags & NFT_SET_TIMEOUT)
  nft_rhash_gc_init(set);

 return 0;
}
