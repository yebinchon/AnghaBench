
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_rbtree_elem {int ext; } ;


 int NFT_SET_ELEM_INTERVAL_END ;
 int NFT_SET_EXT_FLAGS ;
 scalar_t__ nft_set_ext_exists (int *,int ) ;
 int* nft_set_ext_flags (int *) ;

__attribute__((used)) static bool nft_rbtree_interval_end(const struct nft_rbtree_elem *rbe)
{
 return nft_set_ext_exists(&rbe->ext, NFT_SET_EXT_FLAGS) &&
        (*nft_set_ext_flags(&rbe->ext) & NFT_SET_ELEM_INTERVAL_END);
}
