
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 size_t NFTA_NG_DREG ;
 size_t NFTA_NG_MODULUS ;
 size_t NFTA_NG_TYPE ;


 struct nft_expr_ops const nft_ng_inc_ops ;
 struct nft_expr_ops const nft_ng_random_ops ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_ng_select_ops(const struct nft_ctx *ctx, const struct nlattr * const tb[])
{
 u32 type;

 if (!tb[NFTA_NG_DREG] ||
     !tb[NFTA_NG_MODULUS] ||
     !tb[NFTA_NG_TYPE])
  return ERR_PTR(-EINVAL);

 type = ntohl(nla_get_be32(tb[NFTA_NG_TYPE]));

 switch (type) {
 case 129:
  return &nft_ng_inc_ops;
 case 128:
  return &nft_ng_random_ops;
 }

 return ERR_PTR(-EINVAL);
}
