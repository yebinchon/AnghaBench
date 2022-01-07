
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_meta {int key; int sreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOPNOTSUPP ;
 size_t NFTA_META_KEY ;
 size_t NFTA_META_SREG ;





 struct nft_meta* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_trace_enabled ;
 int nft_validate_register_load (int ,unsigned int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;
 int static_branch_inc (int *) ;

int nft_meta_set_init(const struct nft_ctx *ctx,
        const struct nft_expr *expr,
        const struct nlattr * const tb[])
{
 struct nft_meta *priv = nft_expr_priv(expr);
 unsigned int len;
 int err;

 priv->key = ntohl(nla_get_be32(tb[NFTA_META_KEY]));
 switch (priv->key) {
 case 132:
 case 129:



  len = sizeof(u32);
  break;
 case 131:
  len = sizeof(u8);
  break;
 case 130:
  len = sizeof(u8);
  break;
 default:
  return -EOPNOTSUPP;
 }

 priv->sreg = nft_parse_register(tb[NFTA_META_SREG]);
 err = nft_validate_register_load(priv->sreg, len);
 if (err < 0)
  return err;

 if (priv->key == 131)
  static_branch_inc(&nft_trace_enabled);

 return 0;
}
