
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set {int dummy; } ;
struct nft_rbtree_elem {int ext; } ;
struct net {int dummy; } ;


 int nft_is_active (struct net const*,int *) ;
 int nft_set_elem_change_active (struct net const*,struct nft_set const*,int *) ;
 int nft_set_elem_mark_busy (int *) ;

__attribute__((used)) static bool nft_rbtree_flush(const struct net *net,
        const struct nft_set *set, void *priv)
{
 struct nft_rbtree_elem *rbe = priv;

 if (!nft_set_elem_mark_busy(&rbe->ext) ||
     !nft_is_active(net, &rbe->ext)) {
  nft_set_elem_change_active(net, set, &rbe->ext);
  return 1;
 }
 return 0;
}
