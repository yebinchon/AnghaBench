
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_nat {int type; } ;
struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int chain; } ;


 int NFT_CHAIN_T_NAT ;


 int NF_INET_LOCAL_IN ;
 int NF_INET_LOCAL_OUT ;
 int NF_INET_POST_ROUTING ;
 int NF_INET_PRE_ROUTING ;
 int nft_chain_validate_dependency (int ,int ) ;
 int nft_chain_validate_hooks (int ,int) ;
 struct nft_nat* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_nat_validate(const struct nft_ctx *ctx,
       const struct nft_expr *expr,
       const struct nft_data **data)
{
 struct nft_nat *priv = nft_expr_priv(expr);
 int err;

 err = nft_chain_validate_dependency(ctx->chain, NFT_CHAIN_T_NAT);
 if (err < 0)
  return err;

 switch (priv->type) {
 case 128:
  err = nft_chain_validate_hooks(ctx->chain,
            (1 << NF_INET_POST_ROUTING) |
            (1 << NF_INET_LOCAL_IN));
  break;
 case 129:
  err = nft_chain_validate_hooks(ctx->chain,
            (1 << NF_INET_PRE_ROUTING) |
            (1 << NF_INET_LOCAL_OUT));
  break;
 }

 return err;
}
