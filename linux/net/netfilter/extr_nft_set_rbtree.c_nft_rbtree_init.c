
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_set_desc {int dummy; } ;
struct nft_set {int flags; } ;
struct nft_rbtree {int gc_work; int root; int count; int lock; } ;


 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int NFT_SET_TIMEOUT ;
 int RB_ROOT ;
 int nft_rbtree_gc ;
 int nft_set_gc_interval (struct nft_set const*) ;
 struct nft_rbtree* nft_set_priv (struct nft_set const*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rwlock_init (int *) ;
 int seqcount_init (int *) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int nft_rbtree_init(const struct nft_set *set,
      const struct nft_set_desc *desc,
      const struct nlattr * const nla[])
{
 struct nft_rbtree *priv = nft_set_priv(set);

 rwlock_init(&priv->lock);
 seqcount_init(&priv->count);
 priv->root = RB_ROOT;

 INIT_DEFERRABLE_WORK(&priv->gc_work, nft_rbtree_gc);
 if (set->flags & NFT_SET_TIMEOUT)
  queue_delayed_work(system_power_efficient_wq, &priv->gc_work,
       nft_set_gc_interval(set));

 return 0;
}
