
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_rbtree {int lock; int count; } ;
struct net {int dummy; } ;


 int __nft_rbtree_lookup (struct net const*,struct nft_set const*,int const*,struct nft_set_ext const**,unsigned int) ;
 struct nft_rbtree* nft_set_priv (struct nft_set const*) ;
 int read_lock_bh (int *) ;
 unsigned int read_seqcount_begin (int *) ;
 int read_seqcount_retry (int *,unsigned int) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static bool nft_rbtree_lookup(const struct net *net, const struct nft_set *set,
         const u32 *key, const struct nft_set_ext **ext)
{
 struct nft_rbtree *priv = nft_set_priv(set);
 unsigned int seq = read_seqcount_begin(&priv->count);
 bool ret;

 ret = __nft_rbtree_lookup(net, set, key, ext, seq);
 if (ret || !read_seqcount_retry(&priv->count, seq))
  return ret;

 read_lock_bh(&priv->lock);
 seq = read_seqcount_begin(&priv->count);
 ret = __nft_rbtree_lookup(net, set, key, ext, seq);
 read_unlock_bh(&priv->lock);

 return ret;
}
