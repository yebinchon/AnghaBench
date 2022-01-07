
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_fib {int flags; int result; int dreg; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 unsigned int IFNAMSIZ ;
 size_t NFTA_FIB_DREG ;
 size_t NFTA_FIB_FLAGS ;
 int NFTA_FIB_F_ALL ;
 int NFTA_FIB_F_DADDR ;
 int NFTA_FIB_F_IIF ;
 int NFTA_FIB_F_OIF ;
 int NFTA_FIB_F_SADDR ;
 size_t NFTA_FIB_RESULT ;
 int NFT_DATA_VALUE ;



 struct nft_fib* nft_expr_priv (struct nft_expr const*) ;
 int nft_parse_register (struct nlattr const* const) ;
 int nft_validate_register_store (struct nft_ctx const*,int ,int *,int ,unsigned int) ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

int nft_fib_init(const struct nft_ctx *ctx, const struct nft_expr *expr,
   const struct nlattr * const tb[])
{
 struct nft_fib *priv = nft_expr_priv(expr);
 unsigned int len;
 int err;

 if (!tb[NFTA_FIB_DREG] || !tb[NFTA_FIB_RESULT] || !tb[NFTA_FIB_FLAGS])
  return -EINVAL;

 priv->flags = ntohl(nla_get_be32(tb[NFTA_FIB_FLAGS]));

 if (priv->flags == 0 || (priv->flags & ~NFTA_FIB_F_ALL))
  return -EINVAL;

 if ((priv->flags & (NFTA_FIB_F_SADDR | NFTA_FIB_F_DADDR)) ==
      (NFTA_FIB_F_SADDR | NFTA_FIB_F_DADDR))
  return -EINVAL;
 if ((priv->flags & (NFTA_FIB_F_IIF | NFTA_FIB_F_OIF)) ==
      (NFTA_FIB_F_IIF | NFTA_FIB_F_OIF))
  return -EINVAL;
 if ((priv->flags & (NFTA_FIB_F_SADDR | NFTA_FIB_F_DADDR)) == 0)
  return -EINVAL;

 priv->result = ntohl(nla_get_be32(tb[NFTA_FIB_RESULT]));
 priv->dreg = nft_parse_register(tb[NFTA_FIB_DREG]);

 switch (priv->result) {
 case 129:
  if (priv->flags & NFTA_FIB_F_OIF)
   return -EINVAL;
  len = sizeof(int);
  break;
 case 128:
  if (priv->flags & NFTA_FIB_F_OIF)
   return -EINVAL;
  len = IFNAMSIZ;
  break;
 case 130:
  len = sizeof(u32);
  break;
 default:
  return -EINVAL;
 }

 err = nft_validate_register_store(ctx, priv->dreg, ((void*)0),
       NFT_DATA_VALUE, len);
 if (err < 0)
  return err;

 return 0;
}
