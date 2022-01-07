
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_estimate {int size; int space; int lookup; } ;
struct nft_set_desc {int size; } ;
struct nft_rbtree_elem {int dummy; } ;
struct nft_rbtree {int dummy; } ;


 int NFT_SET_CLASS_O_LOG_N ;
 int NFT_SET_CLASS_O_N ;

__attribute__((used)) static bool nft_rbtree_estimate(const struct nft_set_desc *desc, u32 features,
    struct nft_set_estimate *est)
{
 if (desc->size)
  est->size = sizeof(struct nft_rbtree) +
       desc->size * sizeof(struct nft_rbtree_elem);
 else
  est->size = ~0;

 est->lookup = NFT_SET_CLASS_O_LOG_N;
 est->space = NFT_SET_CLASS_O_N;

 return 1;
}
