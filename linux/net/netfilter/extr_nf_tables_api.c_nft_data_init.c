
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_data_desc {int dummy; } ;
struct nft_data {int dummy; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 int NFTA_DATA_MAX ;
 size_t NFTA_DATA_VALUE ;
 size_t NFTA_DATA_VERDICT ;
 int nft_data_policy ;
 int nft_value_init (struct nft_ctx const*,struct nft_data*,unsigned int,struct nft_data_desc*,struct nlattr*) ;
 int nft_verdict_init (struct nft_ctx const*,struct nft_data*,struct nft_data_desc*,struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;

int nft_data_init(const struct nft_ctx *ctx,
    struct nft_data *data, unsigned int size,
    struct nft_data_desc *desc, const struct nlattr *nla)
{
 struct nlattr *tb[NFTA_DATA_MAX + 1];
 int err;

 err = nla_parse_nested_deprecated(tb, NFTA_DATA_MAX, nla,
       nft_data_policy, ((void*)0));
 if (err < 0)
  return err;

 if (tb[NFTA_DATA_VALUE])
  return nft_value_init(ctx, data, size, desc,
          tb[NFTA_DATA_VALUE]);
 if (tb[NFTA_DATA_VERDICT] && ctx != ((void*)0))
  return nft_verdict_init(ctx, data, desc, tb[NFTA_DATA_VERDICT]);
 return -EINVAL;
}
