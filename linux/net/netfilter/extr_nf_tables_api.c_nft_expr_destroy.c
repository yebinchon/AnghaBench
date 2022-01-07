
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int kfree (struct nft_expr*) ;
 int nf_tables_expr_destroy (struct nft_ctx const*,struct nft_expr*) ;

void nft_expr_destroy(const struct nft_ctx *ctx, struct nft_expr *expr)
{
 nf_tables_expr_destroy(ctx, expr);
 kfree(expr);
}
