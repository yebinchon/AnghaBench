
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_payload {int base; } ;
struct nft_offload_ctx {int dummy; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;


 int EOPNOTSUPP ;



 struct nft_payload* nft_expr_priv (struct nft_expr const*) ;
 int nft_payload_offload_ll (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ;
 int nft_payload_offload_nh (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ;
 int nft_payload_offload_th (struct nft_offload_ctx*,struct nft_flow_rule*,struct nft_payload const*) ;

__attribute__((used)) static int nft_payload_offload(struct nft_offload_ctx *ctx,
          struct nft_flow_rule *flow,
          const struct nft_expr *expr)
{
 const struct nft_payload *priv = nft_expr_priv(expr);
 int err;

 switch (priv->base) {
 case 130:
  err = nft_payload_offload_ll(ctx, flow, priv);
  break;
 case 129:
  err = nft_payload_offload_nh(ctx, flow, priv);
  break;
 case 128:
  err = nft_payload_offload_th(ctx, flow, priv);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }
 return err;
}
