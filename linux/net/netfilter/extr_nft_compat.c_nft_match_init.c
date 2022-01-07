
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int __nft_match_init (struct nft_ctx const*,struct nft_expr const*,struct nlattr const* const*,int ) ;
 int nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int
nft_match_init(const struct nft_ctx *ctx, const struct nft_expr *expr,
        const struct nlattr * const tb[])
{
 return __nft_match_init(ctx, expr, tb, nft_expr_priv(expr));
}
