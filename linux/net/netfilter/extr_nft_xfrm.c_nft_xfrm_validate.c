
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_xfrm {int dir; } ;
struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int chain; } ;


 int EINVAL ;
 int NF_INET_FORWARD ;
 int NF_INET_LOCAL_IN ;
 int NF_INET_LOCAL_OUT ;
 int NF_INET_POST_ROUTING ;
 int NF_INET_PRE_ROUTING ;
 int WARN_ON_ONCE (int) ;


 int nft_chain_validate_hooks (int ,unsigned int) ;
 struct nft_xfrm* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_xfrm_validate(const struct nft_ctx *ctx, const struct nft_expr *expr,
        const struct nft_data **data)
{
 const struct nft_xfrm *priv = nft_expr_priv(expr);
 unsigned int hooks;

 switch (priv->dir) {
 case 129:
  hooks = (1 << NF_INET_FORWARD) |
   (1 << NF_INET_LOCAL_IN) |
   (1 << NF_INET_PRE_ROUTING);
  break;
 case 128:
  hooks = (1 << NF_INET_FORWARD) |
   (1 << NF_INET_LOCAL_OUT) |
   (1 << NF_INET_POST_ROUTING);
  break;
 default:
  WARN_ON_ONCE(1);
  return -EINVAL;
 }

 return nft_chain_validate_hooks(ctx->chain, hooks);
}
