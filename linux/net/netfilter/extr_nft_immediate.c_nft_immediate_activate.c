
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_immediate_expr {int dreg; int data; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 void nft_data_hold (int *,int ) ;
 int nft_dreg_to_type (int ) ;
 struct nft_immediate_expr* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void nft_immediate_activate(const struct nft_ctx *ctx,
       const struct nft_expr *expr)
{
 const struct nft_immediate_expr *priv = nft_expr_priv(expr);

 return nft_data_hold(&priv->data, nft_dreg_to_type(priv->dreg));
}
