
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set {int dummy; } ;
struct nft_rhash {int ht; int gc_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int nft_rhash_elem_destroy ;
 struct nft_rhash* nft_set_priv (struct nft_set const*) ;
 int rcu_barrier () ;
 int rhashtable_free_and_destroy (int *,int ,void*) ;

__attribute__((used)) static void nft_rhash_destroy(const struct nft_set *set)
{
 struct nft_rhash *priv = nft_set_priv(set);

 cancel_delayed_work_sync(&priv->gc_work);
 rcu_barrier();
 rhashtable_free_and_destroy(&priv->ht, nft_rhash_elem_destroy,
        (void *)set);
}
