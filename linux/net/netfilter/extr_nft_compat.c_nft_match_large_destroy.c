
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_xt_match_priv {int info; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int __nft_match_destroy (struct nft_ctx const*,struct nft_expr const*,int ) ;
 int kfree (int ) ;
 struct nft_xt_match_priv* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void
nft_match_large_destroy(const struct nft_ctx *ctx, const struct nft_expr *expr)
{
 struct nft_xt_match_priv *priv = nft_expr_priv(expr);

 __nft_match_destroy(ctx, expr, priv->info);
 kfree(priv->info);
}
