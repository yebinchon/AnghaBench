
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_bitmap {int bitmap; } ;
struct net {int dummy; } ;


 int nft_bitmap_active (int ,int ,int ,int ) ;
 int nft_bitmap_location (struct nft_set const*,int const*,int *,int *) ;
 int nft_genmask_cur (struct net const*) ;
 struct nft_bitmap* nft_set_priv (struct nft_set const*) ;

__attribute__((used)) static bool nft_bitmap_lookup(const struct net *net, const struct nft_set *set,
         const u32 *key, const struct nft_set_ext **ext)
{
 const struct nft_bitmap *priv = nft_set_priv(set);
 u8 genmask = nft_genmask_cur(net);
 u32 idx, off;

 nft_bitmap_location(set, key, &idx, &off);

 return nft_bitmap_active(priv->bitmap, idx, off, genmask);
}
