
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct nft_jhash {int offset; int modulus; int autogen_seed; void* dreg; void* sreg; void* seed; scalar_t__ len; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int ERANGE ;
 size_t NFTA_HASH_DREG ;
 size_t NFTA_HASH_LEN ;
 size_t NFTA_HASH_MODULUS ;
 size_t NFTA_HASH_OFFSET ;
 size_t NFTA_HASH_SEED ;
 size_t NFTA_HASH_SREG ;
 int NFT_DATA_VALUE ;
 int U8_MAX ;
 int get_random_bytes (void**,int) ;
 struct nft_jhash* nft_expr_priv (struct nft_expr const*) ;
 void* nft_parse_register (struct nlattr const* const) ;
 int nft_parse_u32_check (struct nlattr const* const,int ,scalar_t__*) ;
 scalar_t__ nft_validate_register_load (void*,scalar_t__) ;
 scalar_t__ nft_validate_register_store (struct nft_ctx const*,void*,int *,int ,int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static int nft_jhash_init(const struct nft_ctx *ctx,
     const struct nft_expr *expr,
     const struct nlattr * const tb[])
{
 struct nft_jhash *priv = nft_expr_priv(expr);
 u32 len;
 int err;

 if (!tb[NFTA_HASH_SREG] ||
     !tb[NFTA_HASH_DREG] ||
     !tb[NFTA_HASH_LEN] ||
     !tb[NFTA_HASH_MODULUS])
  return -EINVAL;

 if (tb[NFTA_HASH_OFFSET])
  priv->offset = ntohl(nla_get_be32(tb[NFTA_HASH_OFFSET]));

 priv->sreg = nft_parse_register(tb[NFTA_HASH_SREG]);
 priv->dreg = nft_parse_register(tb[NFTA_HASH_DREG]);

 err = nft_parse_u32_check(tb[NFTA_HASH_LEN], U8_MAX, &len);
 if (err < 0)
  return err;
 if (len == 0)
  return -ERANGE;

 priv->len = len;

 priv->modulus = ntohl(nla_get_be32(tb[NFTA_HASH_MODULUS]));
 if (priv->modulus < 1)
  return -ERANGE;

 if (priv->offset + priv->modulus - 1 < priv->offset)
  return -EOVERFLOW;

 if (tb[NFTA_HASH_SEED]) {
  priv->seed = ntohl(nla_get_be32(tb[NFTA_HASH_SEED]));
 } else {
  priv->autogen_seed = 1;
  get_random_bytes(&priv->seed, sizeof(priv->seed));
 }

 return nft_validate_register_load(priv->sreg, len) &&
        nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, sizeof(u32));
}
