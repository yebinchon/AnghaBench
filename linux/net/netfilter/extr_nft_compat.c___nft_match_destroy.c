
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_mtdtor_param {struct xt_match* match; int family; void* matchinfo; int net; } ;
struct xt_match {int (* destroy ) (struct xt_mtdtor_param*) ;struct module* me; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {int family; int net; } ;
struct module {int dummy; } ;
struct TYPE_2__ {struct xt_match* data; } ;


 int kfree (TYPE_1__*) ;
 int module_put (struct module*) ;
 int stub1 (struct xt_mtdtor_param*) ;

__attribute__((used)) static void
__nft_match_destroy(const struct nft_ctx *ctx, const struct nft_expr *expr,
      void *info)
{
 struct xt_match *match = expr->ops->data;
 struct module *me = match->me;
 struct xt_mtdtor_param par;

 par.net = ctx->net;
 par.match = match;
 par.matchinfo = info;
 par.family = ctx->family;
 if (par.match->destroy != ((void*)0))
  par.match->destroy(&par);

 module_put(me);
 kfree(expr->ops);
}
