
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_offload_ctx {int dummy; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_cmp_expr {int dummy; } ;


 int __nft_cmp_offload (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_cmp_expr const*) ;
 struct nft_cmp_expr* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int nft_cmp_offload(struct nft_offload_ctx *ctx,
      struct nft_flow_rule *flow,
      const struct nft_expr *expr)
{
 const struct nft_cmp_expr *priv = nft_expr_priv(expr);

 return __nft_cmp_offload(ctx, flow, priv);
}
