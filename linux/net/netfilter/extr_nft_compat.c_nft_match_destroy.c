
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int __nft_match_destroy (struct nft_ctx const*,struct nft_expr const*,int ) ;
 int nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static void
nft_match_destroy(const struct nft_ctx *ctx, const struct nft_expr *expr)
{
 __nft_match_destroy(ctx, expr, nft_expr_priv(expr));
}
