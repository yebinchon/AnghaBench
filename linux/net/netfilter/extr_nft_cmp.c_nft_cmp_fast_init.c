
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_data_desc {int len; } ;
struct nft_data {int* data; } ;
struct nft_ctx {int dummy; } ;
struct nft_cmp_fast_expr {int data; int len; int sreg; } ;
typedef int data ;


 int BITS_PER_BYTE ;
 size_t NFTA_CMP_DATA ;
 size_t NFTA_CMP_SREG ;
 int nft_cmp_fast_mask (int ) ;
 int nft_data_init (int *,struct nft_data*,int,struct nft_data_desc*,struct nlattr const* const) ;
 struct nft_cmp_fast_expr* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_load (int ,int ) ;

__attribute__((used)) static int nft_cmp_fast_init(const struct nft_ctx *ctx,
        const struct nft_expr *expr,
        const struct nlattr * const tb[])
{
 struct nft_cmp_fast_expr *priv = nft_expr_priv(expr);
 struct nft_data_desc desc;
 struct nft_data data;
 u32 mask;
 int err;

 err = nft_data_init(((void*)0), &data, sizeof(data), &desc,
       tb[NFTA_CMP_DATA]);
 if (err < 0)
  return err;

 priv->sreg = nft_parse_register(tb[NFTA_CMP_SREG]);
 err = nft_validate_register_load(priv->sreg, desc.len);
 if (err < 0)
  return err;

 desc.len *= BITS_PER_BYTE;
 mask = nft_cmp_fast_mask(desc.len);

 priv->data = data.data[0] & mask;
 priv->len = desc.len;
 return 0;
}
