
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_expr_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;
typedef enum nft_payload_bases { ____Placeholder_nft_payload_bases } nft_payload_bases ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct nft_expr_ops const* ERR_PTR (int ) ;
 scalar_t__ IS_ALIGNED (unsigned int,unsigned int) ;
 size_t NFTA_PAYLOAD_BASE ;
 size_t NFTA_PAYLOAD_DREG ;
 size_t NFTA_PAYLOAD_LEN ;
 size_t NFTA_PAYLOAD_OFFSET ;
 size_t NFTA_PAYLOAD_SREG ;



 scalar_t__ is_power_of_2 (unsigned int) ;
 struct nft_expr_ops const nft_payload_fast_ops ;
 struct nft_expr_ops const nft_payload_ops ;
 struct nft_expr_ops const nft_payload_set_ops ;
 int nla_get_be32 (struct nlattr const* const) ;
 void* ntohl (int ) ;

__attribute__((used)) static const struct nft_expr_ops *
nft_payload_select_ops(const struct nft_ctx *ctx,
         const struct nlattr * const tb[])
{
 enum nft_payload_bases base;
 unsigned int offset, len;

 if (tb[NFTA_PAYLOAD_BASE] == ((void*)0) ||
     tb[NFTA_PAYLOAD_OFFSET] == ((void*)0) ||
     tb[NFTA_PAYLOAD_LEN] == ((void*)0))
  return ERR_PTR(-EINVAL);

 base = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_BASE]));
 switch (base) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return ERR_PTR(-EOPNOTSUPP);
 }

 if (tb[NFTA_PAYLOAD_SREG] != ((void*)0)) {
  if (tb[NFTA_PAYLOAD_DREG] != ((void*)0))
   return ERR_PTR(-EINVAL);
  return &nft_payload_set_ops;
 }

 if (tb[NFTA_PAYLOAD_DREG] == ((void*)0))
  return ERR_PTR(-EINVAL);

 offset = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_OFFSET]));
 len = ntohl(nla_get_be32(tb[NFTA_PAYLOAD_LEN]));

 if (len <= 4 && is_power_of_2(len) && IS_ALIGNED(offset, len) &&
     base != 130)
  return &nft_payload_fast_ops;
 else
  return &nft_payload_ops;
}
