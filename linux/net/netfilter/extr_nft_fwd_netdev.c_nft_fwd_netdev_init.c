
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_fwd_netdev {int sreg_dev; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 size_t NFTA_FWD_SREG_DEV ;
 struct nft_fwd_netdev* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_load (int ,int) ;

__attribute__((used)) static int nft_fwd_netdev_init(const struct nft_ctx *ctx,
          const struct nft_expr *expr,
          const struct nlattr * const tb[])
{
 struct nft_fwd_netdev *priv = nft_expr_priv(expr);

 if (tb[NFTA_FWD_SREG_DEV] == ((void*)0))
  return -EINVAL;

 priv->sreg_dev = nft_parse_register(tb[NFTA_FWD_SREG_DEV]);
 return nft_validate_register_load(priv->sreg_dev, sizeof(int));
}
