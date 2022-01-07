
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {int rate; int nsecs; } ;
struct nft_limit_pkts {TYPE_1__ limit; int cost; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int div64_u64 (int ,int ) ;
 struct nft_limit_pkts* nft_expr_priv (struct nft_expr const*) ;
 int nft_limit_init (TYPE_1__*,struct nlattr const* const*,int) ;

__attribute__((used)) static int nft_limit_pkts_init(const struct nft_ctx *ctx,
          const struct nft_expr *expr,
          const struct nlattr * const tb[])
{
 struct nft_limit_pkts *priv = nft_expr_priv(expr);
 int err;

 err = nft_limit_init(&priv->limit, tb, 1);
 if (err < 0)
  return err;

 priv->cost = div64_u64(priv->limit.nsecs, priv->limit.rate);
 return 0;
}
