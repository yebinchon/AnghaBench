
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_set_type {int features; } ;


 int NFT_SET_FEATURES ;

__attribute__((used)) static bool nft_set_ops_candidate(const struct nft_set_type *type, u32 flags)
{
 return (flags & type->features) == (flags & NFT_SET_FEATURES);
}
