
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 size_t NFTA_CT_DREG ;
 size_t NFTA_CT_KEY ;
 size_t NFTA_CT_SREG ;
 int NFT_CT_ZONE ;
 scalar_t__ htonl (int ) ;
 struct nft_expr_ops const nft_ct_get_ops ;
 struct nft_expr_ops const nft_ct_set_ops ;
 struct nft_expr_ops const nft_ct_set_zone_ops ;
 scalar_t__ nla_get_be32 (struct nlattr const* const) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_ct_select_ops(const struct nft_ctx *ctx,
      const struct nlattr * const tb[])
{
 if (tb[NFTA_CT_KEY] == ((void*)0))
  return ERR_PTR(-EINVAL);

 if (tb[NFTA_CT_DREG] && tb[NFTA_CT_SREG])
  return ERR_PTR(-EINVAL);

 if (tb[NFTA_CT_DREG])
  return &nft_ct_get_ops;

 if (tb[NFTA_CT_SREG]) {




  return &nft_ct_set_ops;
 }

 return ERR_PTR(-EINVAL);
}
