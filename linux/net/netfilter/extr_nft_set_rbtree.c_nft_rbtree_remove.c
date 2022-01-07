
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_elem {struct nft_rbtree_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_rbtree_elem {int node; } ;
struct nft_rbtree {int lock; int count; int root; } ;
struct net {int dummy; } ;


 struct nft_rbtree* nft_set_priv (struct nft_set const*) ;
 int rb_erase (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void nft_rbtree_remove(const struct net *net,
         const struct nft_set *set,
         const struct nft_set_elem *elem)
{
 struct nft_rbtree *priv = nft_set_priv(set);
 struct nft_rbtree_elem *rbe = elem->priv;

 write_lock_bh(&priv->lock);
 write_seqcount_begin(&priv->count);
 rb_erase(&rbe->node, &priv->root);
 write_seqcount_end(&priv->count);
 write_unlock_bh(&priv->lock);
}
