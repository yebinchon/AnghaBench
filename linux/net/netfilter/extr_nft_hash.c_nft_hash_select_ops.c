
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOPNOTSUPP ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 size_t NFTA_HASH_TYPE ;


 struct nft_expr_ops const nft_jhash_ops ;
 struct nft_expr_ops const nft_symhash_ops ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_hash_select_ops(const struct nft_ctx *ctx,
      const struct nlattr * const tb[])
{
 u32 type;

 if (!tb[NFTA_HASH_TYPE])
  return &nft_jhash_ops;

 type = ntohl(nla_get_be32(tb[NFTA_HASH_TYPE]));
 switch (type) {
 case 128:
  return &nft_symhash_ops;
 case 129:
  return &nft_jhash_ops;
 default:
  break;
 }
 return ERR_PTR(-EOPNOTSUPP);
}
