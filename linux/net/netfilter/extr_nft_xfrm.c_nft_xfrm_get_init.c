
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct nft_xfrm {int key; int dir; int dreg; scalar_t__ spnum; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int family; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ERANGE ;



 size_t NFTA_XFRM_DIR ;
 size_t NFTA_XFRM_DREG ;
 size_t NFTA_XFRM_KEY ;
 size_t NFTA_XFRM_SPNUM ;
 int NFT_DATA_VALUE ;






 scalar_t__ XFRM_MAX_DEPTH ;


 struct nft_xfrm* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,unsigned int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int nla_get_u32 (struct nlattr const* const) ;
 int nla_get_u8 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nft_xfrm_get_init(const struct nft_ctx *ctx,
        const struct nft_expr *expr,
        const struct nlattr * const tb[])
{
 struct nft_xfrm *priv = nft_expr_priv(expr);
 unsigned int len = 0;
 u32 spnum = 0;
 u8 dir;

 if (!tb[NFTA_XFRM_KEY] || !tb[NFTA_XFRM_DIR] || !tb[NFTA_XFRM_DREG])
  return -EINVAL;

 switch (ctx->family) {
 case 137:
 case 136:
 case 138:
  break;
 default:
  return -EOPNOTSUPP;
 }

 priv->key = ntohl(nla_get_u32(tb[NFTA_XFRM_KEY]));
 switch (priv->key) {
 case 133:
 case 130:
  len = sizeof(u32);
  break;
 case 135:
 case 132:
  len = sizeof(struct in_addr);
  break;
 case 134:
 case 131:
  len = sizeof(struct in6_addr);
  break;
 default:
  return -EINVAL;
 }

 dir = nla_get_u8(tb[NFTA_XFRM_DIR]);
 switch (dir) {
 case 129:
 case 128:
  priv->dir = dir;
  break;
 default:
  return -EINVAL;
 }

 if (tb[NFTA_XFRM_SPNUM])
  spnum = ntohl(nla_get_be32(tb[NFTA_XFRM_SPNUM]));

 if (spnum >= XFRM_MAX_DEPTH)
  return -ERANGE;

 priv->spnum = spnum;

 priv->dreg = nft_parse_register(tb[NFTA_XFRM_DREG]);
 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, len);
}
