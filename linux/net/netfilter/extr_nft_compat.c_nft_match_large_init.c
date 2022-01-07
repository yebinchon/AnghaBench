
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_match {int matchsize; } ;
struct nlattr {int dummy; } ;
struct nft_xt_match_priv {int info; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_2__ {struct xt_match* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XT_ALIGN (int ) ;
 int __nft_match_init (struct nft_ctx const*,struct nft_expr const*,struct nlattr const* const*,int ) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 struct nft_xt_match_priv* nft_expr_priv (struct nft_expr const*) ;

__attribute__((used)) static int
nft_match_large_init(const struct nft_ctx *ctx, const struct nft_expr *expr,
       const struct nlattr * const tb[])
{
 struct nft_xt_match_priv *priv = nft_expr_priv(expr);
 struct xt_match *m = expr->ops->data;
 int ret;

 priv->info = kmalloc(XT_ALIGN(m->matchsize), GFP_KERNEL);
 if (!priv->info)
  return -ENOMEM;

 ret = __nft_match_init(ctx, expr, tb, priv->info);
 if (ret)
  kfree(priv->info);
 return ret;
}
