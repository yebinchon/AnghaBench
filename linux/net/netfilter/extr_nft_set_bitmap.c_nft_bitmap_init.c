
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_set_desc {int dummy; } ;
struct nft_set {int klen; } ;
struct nft_bitmap {int bitmap_size; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int nft_bitmap_size (int ) ;
 struct nft_bitmap* nft_set_priv (struct nft_set const*) ;

__attribute__((used)) static int nft_bitmap_init(const struct nft_set *set,
    const struct nft_set_desc *desc,
    const struct nlattr * const nla[])
{
 struct nft_bitmap *priv = nft_set_priv(set);

 INIT_LIST_HEAD(&priv->list);
 priv->bitmap_size = nft_bitmap_size(set->klen);

 return 0;
}
