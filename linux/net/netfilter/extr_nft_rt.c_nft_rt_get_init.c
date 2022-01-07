
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nlattr {int dummy; } ;
struct nft_rt {int key; int dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NFTA_RT_DREG ;
 size_t NFTA_RT_KEY ;
 int NFT_DATA_VALUE ;





 struct nft_rt* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,unsigned int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_rt_get_init(const struct nft_ctx *ctx,
      const struct nft_expr *expr,
      const struct nlattr * const tb[])
{
 struct nft_rt *priv = nft_expr_priv(expr);
 unsigned int len;

 if (tb[NFTA_RT_KEY] == ((void*)0) ||
     tb[NFTA_RT_DREG] == ((void*)0))
  return -EINVAL;

 priv->key = ntohl(nla_get_be32(tb[NFTA_RT_KEY]));
 switch (priv->key) {



 case 131:
  len = sizeof(u32);
  break;
 case 130:
  len = sizeof(struct in6_addr);
  break;
 case 129:
  len = sizeof(u16);
  break;





 default:
  return -EOPNOTSUPP;
 }

 priv->dreg = nft_parse_register(tb[NFTA_RT_DREG]);
 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, len);
}
