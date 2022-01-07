
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_immediate_expr {int data; int dreg; int dlen; } ;
struct nft_expr {int dummy; } ;
struct nft_data_desc {int type; int len; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 size_t NFTA_IMMEDIATE_DATA ;
 size_t NFTA_IMMEDIATE_DREG ;
 int nft_data_init (struct nft_ctx const*,int *,int,struct nft_data_desc*,struct nlattr const* const) ;
 int nft_data_release (int *,int ) ;
 struct nft_immediate_expr* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,int ) ;

__attribute__((used)) static int nft_immediate_init(const struct nft_ctx *ctx,
         const struct nft_expr *expr,
         const struct nlattr * const tb[])
{
 struct nft_immediate_expr *priv = nft_expr_priv(expr);
 struct nft_data_desc desc;
 int err;

 if (tb[NFTA_IMMEDIATE_DREG] == ((void*)0) ||
     tb[NFTA_IMMEDIATE_DATA] == ((void*)0))
  return -EINVAL;

 err = nft_data_init(ctx, &priv->data, sizeof(priv->data), &desc,
       tb[NFTA_IMMEDIATE_DATA]);
 if (err < 0)
  return err;

 priv->dlen = desc.len;

 priv->dreg = nft_parse_register(tb[NFTA_IMMEDIATE_DREG]);
 err = nft_validate_register_store(ctx, priv->dreg, &priv->data,
       desc.type, desc.len);
 if (err < 0)
  goto err1;

 return 0;

err1:
 nft_data_release(&priv->data, desc.type);
 return err;
}
