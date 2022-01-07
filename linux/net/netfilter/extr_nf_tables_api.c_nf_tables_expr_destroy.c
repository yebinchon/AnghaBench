
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_expr_type {int owner; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_2__ {int (* destroy ) (struct nft_ctx const*,struct nft_expr*) ;struct nft_expr_type* type; } ;


 int module_put (int ) ;
 int stub1 (struct nft_ctx const*,struct nft_expr*) ;

__attribute__((used)) static void nf_tables_expr_destroy(const struct nft_ctx *ctx,
       struct nft_expr *expr)
{
 const struct nft_expr_type *type = expr->ops->type;

 if (expr->ops->destroy)
  expr->ops->destroy(ctx, expr);
 module_put(type->owner);
}
