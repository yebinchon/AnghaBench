
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nlattr {int dummy; } ;
struct nft_set_desc {int size; } ;
struct nft_hash {int dummy; } ;
struct hlist_head {int dummy; } ;


 int nft_hash_buckets (int ) ;

__attribute__((used)) static u64 nft_hash_privsize(const struct nlattr * const nla[],
        const struct nft_set_desc *desc)
{
 return sizeof(struct nft_hash) +
        nft_hash_buckets(desc->size) * sizeof(struct hlist_head);
}
