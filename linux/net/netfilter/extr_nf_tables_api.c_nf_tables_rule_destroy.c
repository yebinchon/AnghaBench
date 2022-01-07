
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_rule {int dummy; } ;
struct nft_expr {scalar_t__ ops; } ;
struct nft_ctx {int dummy; } ;


 int kfree (struct nft_rule*) ;
 int nf_tables_expr_destroy (struct nft_ctx const*,struct nft_expr*) ;
 struct nft_expr* nft_expr_first (struct nft_rule*) ;
 struct nft_expr* nft_expr_last (struct nft_rule*) ;
 struct nft_expr* nft_expr_next (struct nft_expr*) ;

__attribute__((used)) static void nf_tables_rule_destroy(const struct nft_ctx *ctx,
       struct nft_rule *rule)
{
 struct nft_expr *expr, *next;





 expr = nft_expr_first(rule);
 while (expr != nft_expr_last(rule) && expr->ops) {
  next = nft_expr_next(expr);
  nf_tables_expr_destroy(ctx, expr);
  expr = next;
 }
 kfree(rule);
}
