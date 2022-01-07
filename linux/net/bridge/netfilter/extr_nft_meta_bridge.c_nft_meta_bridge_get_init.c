
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct nft_meta {int key; int dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 unsigned int IFNAMSIZ ;
 size_t NFTA_META_DREG ;
 size_t NFTA_META_KEY ;
 int NFT_DATA_VALUE ;




 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;
 int nft_meta_get_init (struct nft_ctx const*,struct nft_expr const*,struct nlattr const* const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,unsigned int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_meta_bridge_get_init(const struct nft_ctx *ctx,
        const struct nft_expr *expr,
        const struct nlattr * const tb[])
{
 struct nft_meta *priv = nft_expr_priv(expr);
 unsigned int len;

 priv->key = ntohl(nla_get_be32(tb[NFTA_META_KEY]));
 switch (priv->key) {
 case 131:
 case 128:
  len = IFNAMSIZ;
  break;
 case 130:
 case 129:
  len = sizeof(u16);
  break;
 default:
  return nft_meta_get_init(ctx, expr, tb);
 }

 priv->dreg = nft_parse_register(tb[NFTA_META_DREG]);
 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, len);
}
