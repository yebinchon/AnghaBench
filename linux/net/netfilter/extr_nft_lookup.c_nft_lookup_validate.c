
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nft_set_iter {scalar_t__ err; int fn; scalar_t__ count; scalar_t__ skip; int genmask; } ;
struct nft_lookup {TYPE_2__* set; } ;
struct nft_expr {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int net; } ;
struct TYPE_4__ {int flags; scalar_t__ dtype; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* walk ) (struct nft_ctx const*,TYPE_2__*,struct nft_set_iter*) ;} ;


 scalar_t__ NFT_DATA_VERDICT ;
 int NFT_SET_MAP ;
 struct nft_lookup* nft_expr_priv (struct nft_expr const*) ;
 int nft_genmask_next (int ) ;
 int nft_lookup_validate_setelem ;
 int stub1 (struct nft_ctx const*,TYPE_2__*,struct nft_set_iter*) ;

__attribute__((used)) static int nft_lookup_validate(const struct nft_ctx *ctx,
          const struct nft_expr *expr,
          const struct nft_data **d)
{
 const struct nft_lookup *priv = nft_expr_priv(expr);
 struct nft_set_iter iter;

 if (!(priv->set->flags & NFT_SET_MAP) ||
     priv->set->dtype != NFT_DATA_VERDICT)
  return 0;

 iter.genmask = nft_genmask_next(ctx->net);
 iter.skip = 0;
 iter.count = 0;
 iter.err = 0;
 iter.fn = nft_lookup_validate_setelem;

 priv->set->ops->walk(ctx, priv->set, &iter);
 if (iter.err < 0)
  return iter.err;

 return 0;
}
