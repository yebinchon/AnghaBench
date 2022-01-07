
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_offload_reg {int dummy; } ;
struct nft_offload_ctx {struct nft_offload_reg* regs; } ;
struct nft_meta {size_t dreg; int key; } ;
struct nft_flow_rule {int dummy; } ;
struct nft_expr {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int EOPNOTSUPP ;
 int FLOW_DISSECTOR_KEY_BASIC ;


 int NFT_OFFLOAD_DEP_NETWORK ;
 int NFT_OFFLOAD_DEP_TRANSPORT ;
 int NFT_OFFLOAD_MATCH (int ,int ,int ,int,struct nft_offload_reg*) ;
 int basic ;
 int ip_proto ;
 int n_proto ;
 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;
 int nft_offload_set_dependency (struct nft_offload_ctx*,int ) ;

__attribute__((used)) static int nft_meta_get_offload(struct nft_offload_ctx *ctx,
    struct nft_flow_rule *flow,
    const struct nft_expr *expr)
{
 const struct nft_meta *priv = nft_expr_priv(expr);
 struct nft_offload_reg *reg = &ctx->regs[priv->dreg];

 switch (priv->key) {
 case 128:
  NFT_OFFLOAD_MATCH(FLOW_DISSECTOR_KEY_BASIC, basic, n_proto,
      sizeof(__u16), reg);
  nft_offload_set_dependency(ctx, NFT_OFFLOAD_DEP_NETWORK);
  break;
 case 129:
  NFT_OFFLOAD_MATCH(FLOW_DISSECTOR_KEY_BASIC, basic, ip_proto,
      sizeof(__u8), reg);
  nft_offload_set_dependency(ctx, NFT_OFFLOAD_DEP_TRANSPORT);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
