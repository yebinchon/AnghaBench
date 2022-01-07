
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_ctx {scalar_t__ family; struct nft_chain* chain; } ;
struct nft_chain {int dummy; } ;
struct nft_base_chain {TYPE_1__* type; } ;
typedef enum nft_chain_types { ____Placeholder_nft_chain_types } nft_chain_types ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 scalar_t__ NFPROTO_BRIDGE ;
 int NFT_CHAIN_T_DEFAULT ;
 int NFT_CHAIN_T_NAT ;
 struct nft_base_chain* nft_base_chain (struct nft_chain const*) ;
 int nft_is_base_chain (struct nft_chain const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int nft_compat_chain_validate_dependency(const struct nft_ctx *ctx,
      const char *tablename)
{
 enum nft_chain_types type = NFT_CHAIN_T_DEFAULT;
 const struct nft_chain *chain = ctx->chain;
 const struct nft_base_chain *basechain;

 if (!tablename ||
     !nft_is_base_chain(chain))
  return 0;

 basechain = nft_base_chain(chain);
 if (strcmp(tablename, "nat") == 0) {
  if (ctx->family != NFPROTO_BRIDGE)
   type = NFT_CHAIN_T_NAT;
  if (basechain->type->type != type)
   return -EINVAL;
 }

 return 0;
}
