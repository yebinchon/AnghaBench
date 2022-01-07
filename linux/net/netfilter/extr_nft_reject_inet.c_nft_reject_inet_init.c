
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_reject {int type; int icmp_code; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 size_t NFTA_REJECT_ICMP_CODE ;
 size_t NFTA_REJECT_TYPE ;
 int NFT_REJECT_ICMPX_MAX ;



 struct nft_reject* nft_expr_priv (struct nft_expr const*) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int nla_get_u8 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_reject_inet_init(const struct nft_ctx *ctx,
    const struct nft_expr *expr,
    const struct nlattr * const tb[])
{
 struct nft_reject *priv = nft_expr_priv(expr);
 int icmp_code;

 if (tb[NFTA_REJECT_TYPE] == ((void*)0))
  return -EINVAL;

 priv->type = ntohl(nla_get_be32(tb[NFTA_REJECT_TYPE]));
 switch (priv->type) {
 case 129:
 case 130:
  if (tb[NFTA_REJECT_ICMP_CODE] == ((void*)0))
   return -EINVAL;

  icmp_code = nla_get_u8(tb[NFTA_REJECT_ICMP_CODE]);
  if (priv->type == 130 &&
      icmp_code > NFT_REJECT_ICMPX_MAX)
   return -EINVAL;

  priv->icmp_code = icmp_code;
  break;
 case 128:
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
