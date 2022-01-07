
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nlattr {int dummy; } ;
struct nft_set_desc {int dummy; } ;
struct nft_rhash {int dummy; } ;



__attribute__((used)) static u64 nft_rhash_privsize(const struct nlattr * const nla[],
         const struct nft_set_desc *desc)
{
 return sizeof(struct nft_rhash);
}
