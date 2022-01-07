
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct nft_osf {int ttl; int dreg; scalar_t__ flags; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 size_t NFTA_OSF_DREG ;
 size_t NFTA_OSF_FLAGS ;
 size_t NFTA_OSF_TTL ;
 int NFT_DATA_VALUE ;
 scalar_t__ NFT_OSF_F_VERSION ;
 int NFT_OSF_MAXGENRELEN ;
 struct nft_osf* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,int ) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int nla_get_u8 (struct nlattr const* const) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int nft_osf_init(const struct nft_ctx *ctx,
   const struct nft_expr *expr,
   const struct nlattr * const tb[])
{
 struct nft_osf *priv = nft_expr_priv(expr);
 u32 flags;
 int err;
 u8 ttl;

 if (tb[NFTA_OSF_TTL]) {
  ttl = nla_get_u8(tb[NFTA_OSF_TTL]);
  if (ttl > 2)
   return -EINVAL;
  priv->ttl = ttl;
 }

 if (tb[NFTA_OSF_FLAGS]) {
  flags = ntohl(nla_get_be32(tb[NFTA_OSF_FLAGS]));
  if (flags != NFT_OSF_F_VERSION)
   return -EINVAL;
  priv->flags = flags;
 }

 priv->dreg = nft_parse_register(tb[NFTA_OSF_DREG]);
 err = nft_validate_register_store(ctx, priv->dreg, ((void*)0),
       NFT_DATA_VALUE, NFT_OSF_MAXGENRELEN);
 if (err < 0)
  return err;

 return 0;
}
