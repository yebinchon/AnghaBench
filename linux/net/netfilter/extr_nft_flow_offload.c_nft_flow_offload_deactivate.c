
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_flow_offload {int flowtable; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_trans_phase { ____Placeholder_nft_trans_phase } nft_trans_phase ;


 int nf_tables_deactivate_flowtable (struct nft_ctx const*,int ,int) ;
 struct nft_flow_offload* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_flow_offload_deactivate(const struct nft_ctx *ctx,
     const struct nft_expr *expr,
     enum nft_trans_phase phase)
{
 struct nft_flow_offload *priv = nft_expr_priv(expr);

 nf_tables_deactivate_flowtable(ctx, priv->flowtable, phase);
}
