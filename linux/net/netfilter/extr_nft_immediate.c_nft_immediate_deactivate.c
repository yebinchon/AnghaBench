
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_immediate_expr {int dreg; int data; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_trans_phase { ____Placeholder_nft_trans_phase } nft_trans_phase ;


 int NFT_TRANS_COMMIT ;
 void nft_data_release (int *,int ) ;
 int nft_dreg_to_type (int ) ;
 struct nft_immediate_expr* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_immediate_deactivate(const struct nft_ctx *ctx,
         const struct nft_expr *expr,
         enum nft_trans_phase phase)
{
 const struct nft_immediate_expr *priv = nft_expr_priv(expr);

 if (phase == NFT_TRANS_COMMIT)
  return;

 return nft_data_release(&priv->data, nft_dreg_to_type(priv->dreg));
}
