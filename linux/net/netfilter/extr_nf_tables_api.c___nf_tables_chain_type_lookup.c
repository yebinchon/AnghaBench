
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct nlattr {int dummy; } ;
struct nft_chain_type {int name; } ;


 int NFT_CHAIN_T_MAX ;
 struct nft_chain_type const*** chain_type ;
 int nla_strcmp (struct nlattr const*,int ) ;

__attribute__((used)) static const struct nft_chain_type *
__nf_tables_chain_type_lookup(const struct nlattr *nla, u8 family)
{
 int i;

 for (i = 0; i < NFT_CHAIN_T_MAX; i++) {
  if (chain_type[family][i] != ((void*)0) &&
      !nla_strcmp(nla, chain_type[family][i]->name))
   return chain_type[family][i];
 }
 return ((void*)0);
}
