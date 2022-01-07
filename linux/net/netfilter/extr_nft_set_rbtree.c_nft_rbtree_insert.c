
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_ext {int dummy; } ;
struct nft_set_elem {struct nft_rbtree_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_rbtree_elem {int dummy; } ;
struct nft_rbtree {int lock; int count; } ;
struct net {int dummy; } ;


 int __nft_rbtree_insert (struct net const*,struct nft_set const*,struct nft_rbtree_elem*,struct nft_set_ext**) ;
 struct nft_rbtree* nft_set_priv (struct nft_set const*) ;
 int write_lock_bh (int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int nft_rbtree_insert(const struct net *net, const struct nft_set *set,
        const struct nft_set_elem *elem,
        struct nft_set_ext **ext)
{
 struct nft_rbtree *priv = nft_set_priv(set);
 struct nft_rbtree_elem *rbe = elem->priv;
 int err;

 write_lock_bh(&priv->lock);
 write_seqcount_begin(&priv->count);
 err = __nft_rbtree_insert(net, set, rbe, ext);
 write_seqcount_end(&priv->count);
 write_unlock_bh(&priv->lock);

 return err;
}
