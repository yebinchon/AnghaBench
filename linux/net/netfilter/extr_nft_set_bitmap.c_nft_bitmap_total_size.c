
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nft_bitmap {int dummy; } ;


 scalar_t__ nft_bitmap_size (int ) ;

__attribute__((used)) static inline u64 nft_bitmap_total_size(u32 klen)
{
 return sizeof(struct nft_bitmap) + nft_bitmap_size(klen);
}
