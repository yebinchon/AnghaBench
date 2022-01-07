
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int chain; } ;


 int NFT_CHAIN_T_NAT ;
 int NF_INET_POST_ROUTING ;
 int nft_chain_validate_dependency (int ,int ) ;
 int nft_chain_validate_hooks (int ,int) ;

__attribute__((used)) static int nft_masq_validate(const struct nft_ctx *ctx,
        const struct nft_expr *expr,
        const struct nft_data **data)
{
 int err;

 err = nft_chain_validate_dependency(ctx->chain, NFT_CHAIN_T_NAT);
 if (err < 0)
  return err;

 return nft_chain_validate_hooks(ctx->chain,
            (1 << NF_INET_POST_ROUTING));
}
