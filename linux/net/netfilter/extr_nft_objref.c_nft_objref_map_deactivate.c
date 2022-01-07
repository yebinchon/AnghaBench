
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_objref_map {int binding; int set; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_trans_phase { ____Placeholder_nft_trans_phase } nft_trans_phase ;


 int nf_tables_deactivate_set (struct nft_ctx const*,int ,int *,int) ;
 struct nft_objref_map* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_objref_map_deactivate(const struct nft_ctx *ctx,
          const struct nft_expr *expr,
          enum nft_trans_phase phase)
{
 struct nft_objref_map *priv = nft_expr_priv(expr);

 nf_tables_deactivate_set(ctx, priv->set, &priv->binding, phase);
}
