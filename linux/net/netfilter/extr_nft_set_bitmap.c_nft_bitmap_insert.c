
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {struct nft_bitmap_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_bitmap_elem {int head; struct nft_set_ext ext; } ;
struct nft_bitmap {size_t* bitmap; int list; } ;
struct net {int dummy; } ;


 int EEXIST ;
 int list_add_tail_rcu (int *,int *) ;
 struct nft_bitmap_elem* nft_bitmap_elem_find (struct nft_set const*,struct nft_bitmap_elem*,size_t) ;
 int nft_bitmap_location (struct nft_set const*,int ,size_t*,size_t*) ;
 size_t nft_genmask_next (struct net const*) ;
 int nft_set_ext_key (struct nft_set_ext*) ;
 struct nft_bitmap* nft_set_priv (struct nft_set const*) ;

__attribute__((used)) static int nft_bitmap_insert(const struct net *net, const struct nft_set *set,
        const struct nft_set_elem *elem,
        struct nft_set_ext **ext)
{
 struct nft_bitmap *priv = nft_set_priv(set);
 struct nft_bitmap_elem *new = elem->priv, *be;
 u8 genmask = nft_genmask_next(net);
 u32 idx, off;

 be = nft_bitmap_elem_find(set, new, genmask);
 if (be) {
  *ext = &be->ext;
  return -EEXIST;
 }

 nft_bitmap_location(set, nft_set_ext_key(&new->ext), &idx, &off);

 priv->bitmap[idx] |= (genmask << off);
 list_add_tail_rcu(&new->head, &priv->list);

 return 0;
}
