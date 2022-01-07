
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_estimate {void* space; void* lookup; int size; } ;
struct nft_set_desc {int klen; } ;


 void* NFT_SET_CLASS_O_1 ;
 int nft_bitmap_total_size (int) ;

__attribute__((used)) static bool nft_bitmap_estimate(const struct nft_set_desc *desc, u32 features,
    struct nft_set_estimate *est)
{

 if (desc->klen > 2)
  return 0;

 est->size = nft_bitmap_total_size(desc->klen);
 est->lookup = NFT_SET_CLASS_O_1;
 est->space = NFT_SET_CLASS_O_1;

 return 1;
}
