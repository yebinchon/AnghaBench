
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_fib_result { ____Placeholder_nft_fib_result } nft_fib_result ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 size_t NFTA_FIB_RESULT ;



 struct nft_expr_ops const nft_fib6_ops ;
 struct nft_expr_ops const nft_fib6_type_ops ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_fib6_select_ops(const struct nft_ctx *ctx,
      const struct nlattr * const tb[])
{
 enum nft_fib_result result;

 if (!tb[NFTA_FIB_RESULT])
  return ERR_PTR(-EINVAL);

 result = ntohl(nla_get_be32(tb[NFTA_FIB_RESULT]));

 switch (result) {
 case 129:
  return &nft_fib6_ops;
 case 128:
  return &nft_fib6_ops;
 case 130:
  return &nft_fib6_type_ops;
 default:
  return ERR_PTR(-EOPNOTSUPP);
 }
}
