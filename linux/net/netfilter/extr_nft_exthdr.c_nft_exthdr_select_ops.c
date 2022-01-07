
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int family; } ;


 int EOPNOTSUPP ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 int NFPROTO_IPV6 ;
 size_t NFTA_EXTHDR_DREG ;
 size_t NFTA_EXTHDR_OP ;
 size_t NFTA_EXTHDR_SREG ;



 struct nft_expr_ops const nft_exthdr_ipv4_ops ;
 struct nft_expr_ops const nft_exthdr_ipv6_ops ;
 struct nft_expr_ops const nft_exthdr_tcp_ops ;
 struct nft_expr_ops const nft_exthdr_tcp_set_ops ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_exthdr_select_ops(const struct nft_ctx *ctx,
        const struct nlattr * const tb[])
{
 u32 op;

 if (!tb[NFTA_EXTHDR_OP])
  return &nft_exthdr_ipv6_ops;

 if (tb[NFTA_EXTHDR_SREG] && tb[NFTA_EXTHDR_DREG])
  return ERR_PTR(-EOPNOTSUPP);

 op = ntohl(nla_get_be32(tb[NFTA_EXTHDR_OP]));
 switch (op) {
 case 128:
  if (tb[NFTA_EXTHDR_SREG])
   return &nft_exthdr_tcp_set_ops;
  if (tb[NFTA_EXTHDR_DREG])
   return &nft_exthdr_tcp_ops;
  break;
 case 129:
  if (tb[NFTA_EXTHDR_DREG])
   return &nft_exthdr_ipv6_ops;
  break;
 case 130:
  if (ctx->family != NFPROTO_IPV6) {
   if (tb[NFTA_EXTHDR_DREG])
    return &nft_exthdr_ipv4_ops;
  }
  break;
 }

 return ERR_PTR(-EOPNOTSUPP);
}
