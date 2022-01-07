
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ val; } ;
struct nft_set_elem {TYPE_2__ key; } ;
struct nft_set {int dummy; } ;
typedef void nft_rhash_elem ;
struct nft_rhash_cmp_arg {int key; struct nft_set const* set; int genmask; } ;
struct nft_rhash {int ht; } ;
struct net {int dummy; } ;


 int nft_genmask_next (struct net const*) ;
 int nft_rhash_flush (struct net const*,struct nft_set const*,void*) ;
 int nft_rhash_params ;
 struct nft_rhash* nft_set_priv (struct nft_set const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 void* rhashtable_lookup (int *,struct nft_rhash_cmp_arg*,int ) ;

__attribute__((used)) static void *nft_rhash_deactivate(const struct net *net,
      const struct nft_set *set,
      const struct nft_set_elem *elem)
{
 struct nft_rhash *priv = nft_set_priv(set);
 struct nft_rhash_elem *he;
 struct nft_rhash_cmp_arg arg = {
  .genmask = nft_genmask_next(net),
  .set = set,
  .key = elem->key.val.data,
 };

 rcu_read_lock();
 he = rhashtable_lookup(&priv->ht, &arg, nft_rhash_params);
 if (he != ((void*)0) &&
     !nft_rhash_flush(net, set, he))
  he = ((void*)0);

 rcu_read_unlock();

 return he;
}
