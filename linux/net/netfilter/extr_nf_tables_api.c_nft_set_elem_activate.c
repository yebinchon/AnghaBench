
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_set_ext {int dummy; } ;
struct nft_set_elem {int priv; } ;
struct nft_set {int dtype; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int use; } ;


 int NFT_SET_EXT_DATA ;
 int NFT_SET_EXT_OBJREF ;
 int nft_data_hold (int ,int ) ;
 struct nft_set_ext* nft_set_elem_ext (struct nft_set const*,int ) ;
 int nft_set_ext_data (struct nft_set_ext const*) ;
 scalar_t__ nft_set_ext_exists (struct nft_set_ext const*,int ) ;
 TYPE_1__** nft_set_ext_obj (struct nft_set_ext const*) ;

__attribute__((used)) static void nft_set_elem_activate(const struct net *net,
      const struct nft_set *set,
      struct nft_set_elem *elem)
{
 const struct nft_set_ext *ext = nft_set_elem_ext(set, elem->priv);

 if (nft_set_ext_exists(ext, NFT_SET_EXT_DATA))
  nft_data_hold(nft_set_ext_data(ext), set->dtype);
 if (nft_set_ext_exists(ext, NFT_SET_EXT_OBJREF))
  (*nft_set_ext_obj(ext))->use++;
}
