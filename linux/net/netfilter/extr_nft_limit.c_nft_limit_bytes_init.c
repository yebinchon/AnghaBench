
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_limit {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 struct nft_limit* nft_expr_priv (struct nft_expr const*) ;
 int nft_limit_init (struct nft_limit*,struct nlattr const* const*,int) ;

__attribute__((used)) static int nft_limit_bytes_init(const struct nft_ctx *ctx,
    const struct nft_expr *expr,
    const struct nlattr * const tb[])
{
 struct nft_limit *priv = nft_expr_priv(expr);

 return nft_limit_init(priv, tb, 0);
}
