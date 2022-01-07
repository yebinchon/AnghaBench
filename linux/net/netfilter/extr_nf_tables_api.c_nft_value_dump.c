
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nft_data {int data; } ;


 int NFTA_DATA_VALUE ;
 int nla_put (struct sk_buff*,int ,unsigned int,int ) ;

__attribute__((used)) static int nft_value_dump(struct sk_buff *skb, const struct nft_data *data,
     unsigned int len)
{
 return nla_put(skb, NFTA_DATA_VALUE, len, data->data);
}
