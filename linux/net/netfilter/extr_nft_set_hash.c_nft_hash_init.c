
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_set_desc {int size; } ;
struct nft_set {int dummy; } ;
struct nft_hash {int seed; int buckets; } ;


 int get_random_bytes (int *,int) ;
 int nft_hash_buckets (int ) ;
 struct nft_hash* nft_set_priv (struct nft_set const*) ;

__attribute__((used)) static int nft_hash_init(const struct nft_set *set,
    const struct nft_set_desc *desc,
    const struct nlattr * const tb[])
{
 struct nft_hash *priv = nft_set_priv(set);

 priv->buckets = nft_hash_buckets(desc->size);
 get_random_bytes(&priv->seed, sizeof(priv->seed));

 return 0;
}
