
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_match {unsigned int hooks; int table; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int chain; } ;
struct nf_hook_ops {int hooknum; } ;
struct nft_base_chain {struct nf_hook_ops ops; } ;
struct TYPE_2__ {struct xt_match* data; } ;


 int EINVAL ;
 struct nft_base_chain* nft_base_chain (int ) ;
 int nft_compat_chain_validate_dependency (struct nft_ctx const*,int ) ;
 scalar_t__ nft_is_base_chain (int ) ;

__attribute__((used)) static int nft_match_validate(const struct nft_ctx *ctx,
         const struct nft_expr *expr,
         const struct nft_data **data)
{
 struct xt_match *match = expr->ops->data;
 unsigned int hook_mask = 0;
 int ret;

 if (nft_is_base_chain(ctx->chain)) {
  const struct nft_base_chain *basechain =
      nft_base_chain(ctx->chain);
  const struct nf_hook_ops *ops = &basechain->ops;

  hook_mask = 1 << ops->hooknum;
  if (match->hooks && !(hook_mask & match->hooks))
   return -EINVAL;

  ret = nft_compat_chain_validate_dependency(ctx, match->table);
  if (ret < 0)
   return ret;
 }
 return 0;
}
