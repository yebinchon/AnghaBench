
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nlattr {int dummy; } ;
struct nft_data_desc {int len; int type; } ;
struct TYPE_2__ {int code; struct nft_chain* chain; } ;
struct nft_data {TYPE_1__ verdict; } ;
struct nft_ctx {int table; int net; } ;
struct nft_chain {int use; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IS_ERR (struct nft_chain*) ;
 size_t NFTA_VERDICT_CHAIN ;
 size_t NFTA_VERDICT_CODE ;
 int NFTA_VERDICT_MAX ;


 int NFT_DATA_VERDICT ;






 int NF_VERDICT_MASK ;
 int PTR_ERR (struct nft_chain*) ;
 struct nft_chain* nft_chain_lookup (int ,int ,struct nlattr*,int ) ;
 int nft_genmask_next (int ) ;
 int nft_is_base_chain (struct nft_chain*) ;
 int nft_verdict_policy ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 int ntohl (int ) ;

__attribute__((used)) static int nft_verdict_init(const struct nft_ctx *ctx, struct nft_data *data,
       struct nft_data_desc *desc, const struct nlattr *nla)
{
 u8 genmask = nft_genmask_next(ctx->net);
 struct nlattr *tb[NFTA_VERDICT_MAX + 1];
 struct nft_chain *chain;
 int err;

 err = nla_parse_nested_deprecated(tb, NFTA_VERDICT_MAX, nla,
       nft_verdict_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[NFTA_VERDICT_CODE])
  return -EINVAL;
 data->verdict.code = ntohl(nla_get_be32(tb[NFTA_VERDICT_CODE]));

 switch (data->verdict.code) {
 default:
  switch (data->verdict.code & NF_VERDICT_MASK) {
  case 130:
  case 129:
  case 128:
   break;
  default:
   return -EINVAL;
  }

 case 134:
 case 135:
 case 131:
  break;
 case 132:
 case 133:
  if (!tb[NFTA_VERDICT_CHAIN])
   return -EINVAL;
  chain = nft_chain_lookup(ctx->net, ctx->table,
      tb[NFTA_VERDICT_CHAIN], genmask);
  if (IS_ERR(chain))
   return PTR_ERR(chain);
  if (nft_is_base_chain(chain))
   return -EOPNOTSUPP;

  chain->use++;
  data->verdict.chain = chain;
  break;
 }

 desc->len = sizeof(data->verdict);
 desc->type = NFT_DATA_VERDICT;
 return 0;
}
