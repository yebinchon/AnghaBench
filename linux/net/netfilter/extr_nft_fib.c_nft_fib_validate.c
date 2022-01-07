
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_fib {int result; int flags; } ;
struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int chain; } ;


 int EINVAL ;
 int NFTA_FIB_F_IIF ;
 int NFTA_FIB_F_OIF ;



 int NF_INET_FORWARD ;
 int NF_INET_LOCAL_IN ;
 int NF_INET_LOCAL_OUT ;
 int NF_INET_POST_ROUTING ;
 int NF_INET_PRE_ROUTING ;
 int nft_chain_validate_hooks (int ,unsigned int) ;
 struct nft_fib* nft_expr_priv (struct nft_expr const*) ;

int nft_fib_validate(const struct nft_ctx *ctx, const struct nft_expr *expr,
       const struct nft_data **data)
{
 const struct nft_fib *priv = nft_expr_priv(expr);
 unsigned int hooks;

 switch (priv->result) {
 case 129:
 case 128:
  hooks = (1 << NF_INET_PRE_ROUTING);
  break;
 case 130:
  if (priv->flags & NFTA_FIB_F_IIF)
   hooks = (1 << NF_INET_PRE_ROUTING) |
    (1 << NF_INET_LOCAL_IN) |
    (1 << NF_INET_FORWARD);
  else if (priv->flags & NFTA_FIB_F_OIF)
   hooks = (1 << NF_INET_LOCAL_OUT) |
    (1 << NF_INET_POST_ROUTING) |
    (1 << NF_INET_FORWARD);
  else
   hooks = (1 << NF_INET_LOCAL_IN) |
    (1 << NF_INET_LOCAL_OUT) |
    (1 << NF_INET_FORWARD) |
    (1 << NF_INET_PRE_ROUTING) |
    (1 << NF_INET_POST_ROUTING);

  break;
 default:
  return -EINVAL;
 }

 return nft_chain_validate_hooks(ctx->chain, hooks);
}
