
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_exthdr {int offset; int len; int flags; int op; int dreg; int type; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 size_t NFTA_EXTHDR_DREG ;
 size_t NFTA_EXTHDR_FLAGS ;
 size_t NFTA_EXTHDR_LEN ;
 size_t NFTA_EXTHDR_OFFSET ;
 size_t NFTA_EXTHDR_OP ;
 size_t NFTA_EXTHDR_TYPE ;
 int NFT_DATA_VALUE ;
 int NFT_EXTHDR_F_PRESENT ;
 int NFT_EXTHDR_OP_IPV6 ;
 int U8_MAX ;
 struct nft_exthdr* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_parse_u32_check (struct nlattr const* const,int ,int*) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,int) ;
 int nla_get_u8 (struct nlattr const* const) ;

__attribute__((used)) static int nft_exthdr_init(const struct nft_ctx *ctx,
      const struct nft_expr *expr,
      const struct nlattr * const tb[])
{
 struct nft_exthdr *priv = nft_expr_priv(expr);
 u32 offset, len, flags = 0, op = NFT_EXTHDR_OP_IPV6;
 int err;

 if (!tb[NFTA_EXTHDR_DREG] ||
     !tb[NFTA_EXTHDR_TYPE] ||
     !tb[NFTA_EXTHDR_OFFSET] ||
     !tb[NFTA_EXTHDR_LEN])
  return -EINVAL;

 err = nft_parse_u32_check(tb[NFTA_EXTHDR_OFFSET], U8_MAX, &offset);
 if (err < 0)
  return err;

 err = nft_parse_u32_check(tb[NFTA_EXTHDR_LEN], U8_MAX, &len);
 if (err < 0)
  return err;

 if (tb[NFTA_EXTHDR_FLAGS]) {
  err = nft_parse_u32_check(tb[NFTA_EXTHDR_FLAGS], U8_MAX, &flags);
  if (err < 0)
   return err;

  if (flags & ~NFT_EXTHDR_F_PRESENT)
   return -EINVAL;
 }

 if (tb[NFTA_EXTHDR_OP]) {
  err = nft_parse_u32_check(tb[NFTA_EXTHDR_OP], U8_MAX, &op);
  if (err < 0)
   return err;
 }

 priv->type = nla_get_u8(tb[NFTA_EXTHDR_TYPE]);
 priv->offset = offset;
 priv->len = len;
 priv->dreg = nft_parse_register(tb[NFTA_EXTHDR_DREG]);
 priv->flags = flags;
 priv->op = op;

 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, priv->len);
}
