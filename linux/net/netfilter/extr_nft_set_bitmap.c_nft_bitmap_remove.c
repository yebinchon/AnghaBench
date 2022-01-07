
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct nft_set_elem {struct nft_bitmap_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_bitmap_elem {int head; int ext; } ;
struct nft_bitmap {size_t* bitmap; } ;
struct net {int dummy; } ;


 int list_del_rcu (int *) ;
 int nft_bitmap_location (struct nft_set const*,int ,size_t*,size_t*) ;
 size_t nft_genmask_next (struct net const*) ;
 int nft_set_ext_key (int *) ;
 struct nft_bitmap* nft_set_priv (struct nft_set const*) ;

__attribute__((used)) static void nft_bitmap_remove(const struct net *net,
         const struct nft_set *set,
         const struct nft_set_elem *elem)
{
 struct nft_bitmap *priv = nft_set_priv(set);
 struct nft_bitmap_elem *be = elem->priv;
 u8 genmask = nft_genmask_next(net);
 u32 idx, off;

 nft_bitmap_location(set, nft_set_ext_key(&be->ext), &idx, &off);

 priv->bitmap[idx] &= ~(genmask << off);
 list_del_rcu(&be->head);
}
