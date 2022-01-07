
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_exthdr {int type; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOPNOTSUPP ;




 struct nft_exthdr* nft_expr_priv (struct nft_expr const*) ;
 int nft_exthdr_init (struct nft_ctx const*,struct nft_expr const*,struct nlattr const* const*) ;

__attribute__((used)) static int nft_exthdr_ipv4_init(const struct nft_ctx *ctx,
    const struct nft_expr *expr,
    const struct nlattr * const tb[])
{
 struct nft_exthdr *priv = nft_expr_priv(expr);
 int err = nft_exthdr_init(ctx, expr, tb);

 if (err < 0)
  return err;

 switch (priv->type) {
 case 128:
 case 131:
 case 129:
 case 130:
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
