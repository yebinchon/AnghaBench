
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_payload_set {int csum_type; int csum_flags; void* len; int sreg; void* csum_offset; void* offset; void* base; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NFTA_PAYLOAD_BASE ;
 size_t NFTA_PAYLOAD_CSUM_FLAGS ;
 size_t NFTA_PAYLOAD_CSUM_OFFSET ;
 size_t NFTA_PAYLOAD_CSUM_TYPE ;
 size_t NFTA_PAYLOAD_LEN ;
 size_t NFTA_PAYLOAD_OFFSET ;
 size_t NFTA_PAYLOAD_SREG ;


 int NFT_PAYLOAD_L4CSUM_PSEUDOHDR ;
 struct nft_payload_set* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_load (int ,void*) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nft_payload_set_init(const struct nft_ctx *ctx,
    const struct nft_expr *expr,
    const struct nlattr * const tb[])
{
 struct nft_payload_set *priv = nft_expr_priv(expr);

 priv->base = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_BASE]));
 priv->offset = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_OFFSET]));
 priv->len = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_LEN]));
 priv->sreg = nft_parse_register(tb[NFTA_PAYLOAD_SREG]);

 if (tb[NFTA_PAYLOAD_CSUM_TYPE])
  priv->csum_type =
   ntohl(nla_get_be32(tb[NFTA_PAYLOAD_CSUM_TYPE]));
 if (tb[NFTA_PAYLOAD_CSUM_OFFSET])
  priv->csum_offset =
   ntohl(nla_get_be32(tb[NFTA_PAYLOAD_CSUM_OFFSET]));
 if (tb[NFTA_PAYLOAD_CSUM_FLAGS]) {
  u32 flags;

  flags = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_CSUM_FLAGS]));
  if (flags & ~NFT_PAYLOAD_L4CSUM_PSEUDOHDR)
   return -EINVAL;

  priv->csum_flags = flags;
 }

 switch (priv->csum_type) {
 case 128:
 case 129:
  break;
 default:
  return -EOPNOTSUPP;
 }

 return nft_validate_register_load(priv->sreg, priv->len);
}
