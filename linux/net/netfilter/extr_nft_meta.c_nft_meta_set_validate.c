
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_meta {scalar_t__ key; } ;
struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int family; int chain; } ;


 int EOPNOTSUPP ;





 scalar_t__ NFT_META_PKTTYPE ;
 int NF_BR_PRE_ROUTING ;
 int NF_INET_PRE_ROUTING ;
 int NF_NETDEV_INGRESS ;
 int nft_chain_validate_hooks (int ,unsigned int) ;
 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;

int nft_meta_set_validate(const struct nft_ctx *ctx,
     const struct nft_expr *expr,
     const struct nft_data **data)
{
 struct nft_meta *priv = nft_expr_priv(expr);
 unsigned int hooks;

 if (priv->key != NFT_META_PKTTYPE)
  return 0;

 switch (ctx->family) {
 case 132:
  hooks = 1 << NF_BR_PRE_ROUTING;
  break;
 case 128:
  hooks = 1 << NF_NETDEV_INGRESS;
  break;
 case 130:
 case 129:
 case 131:
  hooks = 1 << NF_INET_PRE_ROUTING;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return nft_chain_validate_hooks(ctx->chain, hooks);
}
