
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOPNOTSUPP ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 size_t NFTA_FWD_SREG_ADDR ;
 size_t NFTA_FWD_SREG_DEV ;
 struct nft_expr_ops const nft_fwd_neigh_netdev_ops ;
 struct nft_expr_ops const nft_fwd_netdev_ops ;

__attribute__((used)) static const struct nft_expr_ops *
nft_fwd_select_ops(const struct nft_ctx *ctx,
     const struct nlattr * const tb[])
{
 if (tb[NFTA_FWD_SREG_ADDR])
  return &nft_fwd_neigh_netdev_ops;
 if (tb[NFTA_FWD_SREG_DEV])
  return &nft_fwd_netdev_ops;

        return ERR_PTR(-EOPNOTSUPP);
}
