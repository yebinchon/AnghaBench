
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_elem {struct nft_rhash_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_rhash_elem {int node; } ;
struct nft_rhash {int ht; } ;
struct net {int dummy; } ;


 int nft_rhash_params ;
 struct nft_rhash* nft_set_priv (struct nft_set const*) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void nft_rhash_remove(const struct net *net,
        const struct nft_set *set,
        const struct nft_set_elem *elem)
{
 struct nft_rhash *priv = nft_set_priv(set);
 struct nft_rhash_elem *he = elem->priv;

 rhashtable_remove_fast(&priv->ht, &he->node, nft_rhash_params);
}
