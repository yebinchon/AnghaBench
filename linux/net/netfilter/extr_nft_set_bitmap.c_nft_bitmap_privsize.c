
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_set_desc {int dummy; } ;


 size_t NFTA_SET_KEY_LEN ;
 int nft_bitmap_total_size (int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static u64 nft_bitmap_privsize(const struct nlattr * const nla[],
          const struct nft_set_desc *desc)
{
 u32 klen = ntohl(nla_get_be32(nla[NFTA_SET_KEY_LEN]));

 return nft_bitmap_total_size(klen);
}
