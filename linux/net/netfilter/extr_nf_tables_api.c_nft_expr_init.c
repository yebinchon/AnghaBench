
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct nft_expr_info {TYPE_2__* ops; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct module {int dummy; } ;
struct TYPE_4__ {TYPE_1__* type; int size; } ;
struct TYPE_3__ {int (* release_ops ) (TYPE_2__*) ;struct module* owner; } ;


 int ENOMEM ;
 struct nft_expr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct nft_expr*) ;
 struct nft_expr* kzalloc (int ,int ) ;
 int module_put (struct module*) ;
 int nf_tables_expr_parse (struct nft_ctx const*,struct nlattr const*,struct nft_expr_info*) ;
 int nf_tables_newexpr (struct nft_ctx const*,struct nft_expr_info*,struct nft_expr*) ;
 int stub1 (TYPE_2__*) ;

struct nft_expr *nft_expr_init(const struct nft_ctx *ctx,
          const struct nlattr *nla)
{
 struct nft_expr_info info;
 struct nft_expr *expr;
 struct module *owner;
 int err;

 err = nf_tables_expr_parse(ctx, nla, &info);
 if (err < 0)
  goto err1;

 err = -ENOMEM;
 expr = kzalloc(info.ops->size, GFP_KERNEL);
 if (expr == ((void*)0))
  goto err2;

 err = nf_tables_newexpr(ctx, &info, expr);
 if (err < 0)
  goto err3;

 return expr;
err3:
 kfree(expr);
err2:
 owner = info.ops->type->owner;
 if (info.ops->type->release_ops)
  info.ops->type->release_ops(info.ops);

 module_put(owner);
err1:
 return ERR_PTR(err);
}
