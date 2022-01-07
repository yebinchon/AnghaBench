
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct nft_set {int dummy; } ;
struct nft_bitmap_elem {int ext; } ;
struct nft_bitmap {size_t* bitmap; } ;
struct net {int dummy; } ;


 int nft_bitmap_location (struct nft_set const*,int ,size_t*,size_t*) ;
 size_t nft_genmask_next (struct net const*) ;
 int nft_set_elem_change_active (struct net const*,struct nft_set const*,int *) ;
 int nft_set_ext_key (int *) ;
 struct nft_bitmap* nft_set_priv (struct nft_set const*) ;

__attribute__((used)) static bool nft_bitmap_flush(const struct net *net,
        const struct nft_set *set, void *_be)
{
 struct nft_bitmap *priv = nft_set_priv(set);
 u8 genmask = nft_genmask_next(net);
 struct nft_bitmap_elem *be = _be;
 u32 idx, off;

 nft_bitmap_location(set, nft_set_ext_key(&be->ext), &idx, &off);

 priv->bitmap[idx] &= ~(genmask << off);
 nft_set_elem_change_active(net, set, &be->ext);

 return 1;
}
