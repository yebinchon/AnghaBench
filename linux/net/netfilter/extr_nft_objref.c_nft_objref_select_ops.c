
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOPNOTSUPP ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 size_t NFTA_OBJREF_IMM_NAME ;
 size_t NFTA_OBJREF_IMM_TYPE ;
 size_t NFTA_OBJREF_SET_ID ;
 size_t NFTA_OBJREF_SET_NAME ;
 size_t NFTA_OBJREF_SET_SREG ;
 struct nft_expr_ops const nft_objref_map_ops ;
 struct nft_expr_ops const nft_objref_ops ;

__attribute__((used)) static const struct nft_expr_ops *
nft_objref_select_ops(const struct nft_ctx *ctx,
                      const struct nlattr * const tb[])
{
 if (tb[NFTA_OBJREF_SET_SREG] &&
     (tb[NFTA_OBJREF_SET_NAME] ||
      tb[NFTA_OBJREF_SET_ID]))
  return &nft_objref_map_ops;
 else if (tb[NFTA_OBJREF_IMM_NAME] &&
   tb[NFTA_OBJREF_IMM_TYPE])
  return &nft_objref_ops;

 return ERR_PTR(-EOPNOTSUPP);
}
