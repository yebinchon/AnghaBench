
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_payload {void* len; int dreg; void* offset; void* base; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 size_t NFTA_PAYLOAD_BASE ;
 size_t NFTA_PAYLOAD_DREG ;
 size_t NFTA_PAYLOAD_LEN ;
 size_t NFTA_PAYLOAD_OFFSET ;
 int NFT_DATA_VALUE ;
 struct nft_payload* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,void*) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nft_payload_init(const struct nft_ctx *ctx,
       const struct nft_expr *expr,
       const struct nlattr * const tb[])
{
 struct nft_payload *priv = nft_expr_priv(expr);

 priv->base = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_BASE]));
 priv->offset = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_OFFSET]));
 priv->len = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_LEN]));
 priv->dreg = nft_parse_register(tb[NFTA_PAYLOAD_DREG]);

 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, priv->len);
}
