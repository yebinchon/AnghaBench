
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_rule {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_2__ {int (* activate ) (struct nft_ctx const*,struct nft_expr*) ;} ;


 struct nft_expr* nft_expr_first (struct nft_rule*) ;
 struct nft_expr* nft_expr_last (struct nft_rule*) ;
 struct nft_expr* nft_expr_next (struct nft_expr*) ;
 int stub1 (struct nft_ctx const*,struct nft_expr*) ;

__attribute__((used)) static void nft_rule_expr_activate(const struct nft_ctx *ctx,
       struct nft_rule *rule)
{
 struct nft_expr *expr;

 expr = nft_expr_first(rule);
 while (expr != nft_expr_last(rule) && expr->ops) {
  if (expr->ops->activate)
   expr->ops->activate(ctx, expr);

  expr = nft_expr_next(expr);
 }
}
