
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_range_expr {int op; scalar_t__ len; int data_from; int data_to; int sreg; } ;
struct nft_expr {int dummy; } ;
struct nft_data_desc {scalar_t__ len; int type; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 size_t NFTA_RANGE_FROM_DATA ;
 size_t NFTA_RANGE_OP ;
 size_t NFTA_RANGE_SREG ;
 size_t NFTA_RANGE_TO_DATA ;


 int U8_MAX ;
 int nft_data_init (int *,int *,int,struct nft_data_desc*,struct nlattr const* const) ;
 int nft_data_release (int *,int ) ;
 struct nft_range_expr* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_parse_u32_check (struct nlattr const* const,int ,int*) ;
 int nft_validate_register_load (int ,scalar_t__) ;

__attribute__((used)) static int nft_range_init(const struct nft_ctx *ctx, const struct nft_expr *expr,
   const struct nlattr * const tb[])
{
 struct nft_range_expr *priv = nft_expr_priv(expr);
 struct nft_data_desc desc_from, desc_to;
 int err;
 u32 op;

 if (!tb[NFTA_RANGE_SREG] ||
     !tb[NFTA_RANGE_OP] ||
     !tb[NFTA_RANGE_FROM_DATA] ||
     !tb[NFTA_RANGE_TO_DATA])
  return -EINVAL;

 err = nft_data_init(((void*)0), &priv->data_from, sizeof(priv->data_from),
       &desc_from, tb[NFTA_RANGE_FROM_DATA]);
 if (err < 0)
  return err;

 err = nft_data_init(((void*)0), &priv->data_to, sizeof(priv->data_to),
       &desc_to, tb[NFTA_RANGE_TO_DATA]);
 if (err < 0)
  goto err1;

 if (desc_from.len != desc_to.len) {
  err = -EINVAL;
  goto err2;
 }

 priv->sreg = nft_parse_register(tb[NFTA_RANGE_SREG]);
 err = nft_validate_register_load(priv->sreg, desc_from.len);
 if (err < 0)
  goto err2;

 err = nft_parse_u32_check(tb[NFTA_RANGE_OP], U8_MAX, &op);
 if (err < 0)
  goto err2;

 switch (op) {
 case 129:
 case 128:
  break;
 default:
  err = -EINVAL;
  goto err2;
 }

 priv->op = op;
 priv->len = desc_from.len;
 return 0;
err2:
 nft_data_release(&priv->data_to, desc_to.type);
err1:
 nft_data_release(&priv->data_from, desc_from.type);
 return err;
}
