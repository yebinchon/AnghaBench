
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_data {int verdict; } ;
typedef enum nft_data_types { ____Placeholder_nft_data_types } nft_data_types ;


 int EINVAL ;
 int NFTA_DATA_VERDICT ;


 int WARN_ON (int) ;
 int nft_value_dump (struct sk_buff*,struct nft_data const*,unsigned int) ;
 int nft_verdict_dump (struct sk_buff*,int ,int *) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;

int nft_data_dump(struct sk_buff *skb, int attr, const struct nft_data *data,
    enum nft_data_types type, unsigned int len)
{
 struct nlattr *nest;
 int err;

 nest = nla_nest_start_noflag(skb, attr);
 if (nest == ((void*)0))
  return -1;

 switch (type) {
 case 129:
  err = nft_value_dump(skb, data, len);
  break;
 case 128:
  err = nft_verdict_dump(skb, NFTA_DATA_VERDICT, &data->verdict);
  break;
 default:
  err = -EINVAL;
  WARN_ON(1);
 }

 nla_nest_end(skb, nest);
 return err;
}
