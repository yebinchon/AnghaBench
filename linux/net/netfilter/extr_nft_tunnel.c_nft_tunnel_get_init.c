
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_tunnel {int key; scalar_t__ mode; int dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NFTA_TUNNEL_DREG ;
 size_t NFTA_TUNNEL_KEY ;
 size_t NFTA_TUNNEL_MODE ;
 int NFT_DATA_VALUE ;

 scalar_t__ NFT_TUNNEL_MODE_MAX ;
 scalar_t__ NFT_TUNNEL_MODE_NONE ;

 struct nft_tunnel* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nft_tunnel_get_init(const struct nft_ctx *ctx,
          const struct nft_expr *expr,
          const struct nlattr * const tb[])
{
 struct nft_tunnel *priv = nft_expr_priv(expr);
 u32 len;

 if (!tb[NFTA_TUNNEL_KEY] &&
     !tb[NFTA_TUNNEL_DREG])
  return -EINVAL;

 priv->key = ntohl(nla_get_be32(tb[NFTA_TUNNEL_KEY]));
 switch (priv->key) {
 case 128:
  len = sizeof(u8);
  break;
 case 129:
  len = sizeof(u32);
  break;
 default:
  return -EOPNOTSUPP;
 }

 priv->dreg = nft_parse_register(tb[NFTA_TUNNEL_DREG]);

 if (tb[NFTA_TUNNEL_MODE]) {
  priv->mode = ntohl(nla_get_be32(tb[NFTA_TUNNEL_MODE]));
  if (priv->mode > NFT_TUNNEL_MODE_MAX)
   return -EOPNOTSUPP;
 } else {
  priv->mode = NFT_TUNNEL_MODE_NONE;
 }

 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, len);
}
