
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_offload_ctx {TYPE_1__* regs; } ;
struct nft_immediate_expr {size_t dreg; int data; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;
struct TYPE_2__ {int data; } ;


 size_t NFT_REG_VERDICT ;
 int memcpy (int *,int *,int) ;
 struct nft_immediate_expr* nft_expr_priv (struct nft_expr const*) ;
 int nft_immediate_offload_verdict (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_immediate_expr const*) ;

__attribute__((used)) static int nft_immediate_offload(struct nft_offload_ctx *ctx,
     struct nft_flow_rule *flow,
     const struct nft_expr *expr)
{
 const struct nft_immediate_expr *priv = nft_expr_priv(expr);

 if (priv->dreg == NFT_REG_VERDICT)
  return nft_immediate_offload_verdict(ctx, flow, priv);

 memcpy(&ctx->regs[priv->dreg].data, &priv->data, sizeof(priv->data));

 return 0;
}
