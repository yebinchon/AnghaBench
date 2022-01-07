
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_set_elem {struct nft_rbtree_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_rbtree_elem {int ext; } ;
struct net {int dummy; } ;


 int nft_set_elem_change_active (struct net const*,struct nft_set const*,int *) ;
 int nft_set_elem_clear_busy (int *) ;

__attribute__((used)) static void nft_rbtree_activate(const struct net *net,
    const struct nft_set *set,
    const struct nft_set_elem *elem)
{
 struct nft_rbtree_elem *rbe = elem->priv;

 nft_set_elem_change_active(net, set, &rbe->ext);
 nft_set_elem_clear_busy(&rbe->ext);
}
