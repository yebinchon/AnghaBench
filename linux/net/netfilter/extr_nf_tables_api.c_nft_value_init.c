
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nft_data_desc {unsigned int len; int type; } ;
struct nft_data {int data; } ;
struct nft_ctx {int dummy; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int NFT_DATA_VALUE ;
 unsigned int nla_len (struct nlattr const*) ;
 int nla_memcpy (int ,struct nlattr const*,unsigned int) ;

__attribute__((used)) static int nft_value_init(const struct nft_ctx *ctx,
     struct nft_data *data, unsigned int size,
     struct nft_data_desc *desc, const struct nlattr *nla)
{
 unsigned int len;

 len = nla_len(nla);
 if (len == 0)
  return -EINVAL;
 if (len > size)
  return -EOVERFLOW;

 nla_memcpy(data->data, nla, len);
 desc->type = NFT_DATA_VALUE;
 desc->len = len;
 return 0;
}
