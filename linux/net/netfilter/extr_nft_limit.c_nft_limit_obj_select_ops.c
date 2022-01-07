
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_object_ops {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EOPNOTSUPP ;
 struct nft_object_ops const* ERR_PTR (int ) ;
 size_t NFTA_LIMIT_TYPE ;


 struct nft_object_ops const nft_limit_obj_bytes_ops ;
 struct nft_object_ops const nft_limit_obj_pkts_ops ;
 int nla_get_be32 (struct nlattr const* const) ;
 int ntohl (int ) ;

__attribute__((used)) static const struct nft_object_ops *
nft_limit_obj_select_ops(const struct nft_ctx *ctx,
    const struct nlattr * const tb[])
{
 if (!tb[NFTA_LIMIT_TYPE])
  return &nft_limit_obj_pkts_ops;

 switch (ntohl(nla_get_be32(tb[NFTA_LIMIT_TYPE]))) {
 case 129:
  return &nft_limit_obj_pkts_ops;
 case 128:
  return &nft_limit_obj_bytes_ops;
 }
 return ERR_PTR(-EOPNOTSUPP);
}
