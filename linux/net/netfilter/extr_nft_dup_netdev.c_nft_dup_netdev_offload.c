
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nft_offload_ctx {TYPE_2__* regs; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_dup_netdev {size_t sreg_dev; } ;
struct TYPE_3__ {int* data; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int FLOW_ACTION_MIRRED ;
 struct nft_dup_netdev* nft_expr_priv (struct nft_expr const*) ;
 int nft_fwd_dup_netdev_offload (struct nft_offload_ctx*,struct nft_flow_rule*,int ,int) ;

__attribute__((used)) static int nft_dup_netdev_offload(struct nft_offload_ctx *ctx,
      struct nft_flow_rule *flow,
      const struct nft_expr *expr)
{
 const struct nft_dup_netdev *priv = nft_expr_priv(expr);
 int oif = ctx->regs[priv->sreg_dev].data.data[0];

 return nft_fwd_dup_netdev_offload(ctx, flow, FLOW_ACTION_MIRRED, oif);
}
