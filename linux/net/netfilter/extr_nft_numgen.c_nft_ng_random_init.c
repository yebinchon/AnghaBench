
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_ng_random {int offset; int modulus; int dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOVERFLOW ;
 int ERANGE ;
 size_t NFTA_NG_DREG ;
 size_t NFTA_NG_MODULUS ;
 size_t NFTA_NG_OFFSET ;
 int NFT_DATA_VALUE ;
 struct nft_ng_random* nft_expr_priv (struct nft_expr const*) ;
 int nft_numgen_prandom_state ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;
 int prandom_init_once (int *) ;

__attribute__((used)) static int nft_ng_random_init(const struct nft_ctx *ctx,
         const struct nft_expr *expr,
         const struct nlattr * const tb[])
{
 struct nft_ng_random *priv = nft_expr_priv(expr);

 if (tb[NFTA_NG_OFFSET])
  priv->offset = ntohl(nla_get_be32(tb[NFTA_NG_OFFSET]));

 priv->modulus = ntohl(nla_get_be32(tb[NFTA_NG_MODULUS]));
 if (priv->modulus == 0)
  return -ERANGE;

 if (priv->offset + priv->modulus - 1 < priv->offset)
  return -EOVERFLOW;

 prandom_init_once(&nft_numgen_prandom_state);

 priv->dreg = nft_parse_register(tb[NFTA_NG_DREG]);

 return nft_validate_register_store(ctx, priv->dreg, ((void*)0),
        NFT_DATA_VALUE, sizeof(u32));
}
