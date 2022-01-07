
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_chain {int name; } ;


 int nft_chain_hash (int ,int ,int ) ;

__attribute__((used)) static u32 nft_chain_hash_obj(const void *data, u32 len, u32 seed)
{
 const struct nft_chain *chain = data;

 return nft_chain_hash(chain->name, 0, seed);
}
