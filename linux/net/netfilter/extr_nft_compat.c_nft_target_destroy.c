
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgdtor_param {struct xt_target* target; int family; void* targinfo; int net; } ;
struct xt_target {int (* destroy ) (struct xt_tgdtor_param*) ;struct module* me; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {int family; int net; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct xt_target* data; } ;


 int kfree (TYPE_1__*) ;
 int module_put (struct module*) ;
 void* nft_expr_priv (struct nft_expr const*) ;
 int stub1 (struct xt_tgdtor_param*) ;

__attribute__((used)) static void
nft_target_destroy(const struct nft_ctx *ctx, const struct nft_expr *expr)
{
 struct xt_target *target = expr->ops->data;
 void *info = nft_expr_priv(expr);
 struct module *me = target->me;
 struct xt_tgdtor_param par;

 par.net = ctx->net;
 par.target = target;
 par.targinfo = info;
 par.family = ctx->family;
 if (par.target->destroy != ((void*)0))
  par.target->destroy(&par);

 module_put(me);
 kfree(expr->ops);
}
