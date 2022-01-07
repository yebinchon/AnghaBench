
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_estimate {int space; int lookup; int size; } ;
struct nft_set_desc {int dummy; } ;


 int NFT_SET_CLASS_O_1 ;
 int NFT_SET_CLASS_O_N ;

__attribute__((used)) static bool nft_rhash_estimate(const struct nft_set_desc *desc, u32 features,
          struct nft_set_estimate *est)
{
 est->size = ~0;
 est->lookup = NFT_SET_CLASS_O_1;
 est->space = NFT_SET_CLASS_O_N;

 return 1;
}
