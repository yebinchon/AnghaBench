
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_estimate {int size; int space; int lookup; } ;
struct nft_set_desc {int size; int klen; } ;
struct nft_hash_elem {int dummy; } ;
struct nft_hash {int dummy; } ;
struct hlist_head {int dummy; } ;


 int NFT_SET_CLASS_O_1 ;
 int NFT_SET_CLASS_O_N ;
 int nft_hash_buckets (int) ;

__attribute__((used)) static bool nft_hash_estimate(const struct nft_set_desc *desc, u32 features,
         struct nft_set_estimate *est)
{
 if (!desc->size)
  return 0;

 if (desc->klen == 4)
  return 0;

 est->size = sizeof(struct nft_hash) +
        nft_hash_buckets(desc->size) * sizeof(struct hlist_head) +
        desc->size * sizeof(struct nft_hash_elem);
 est->lookup = NFT_SET_CLASS_O_1;
 est->space = NFT_SET_CLASS_O_N;

 return 1;
}
