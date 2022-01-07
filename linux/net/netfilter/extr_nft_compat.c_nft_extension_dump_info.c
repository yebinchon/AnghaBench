
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 unsigned int XT_ALIGN (unsigned int) ;
 int memcpy (scalar_t__,void const*,unsigned int) ;
 int memset (scalar_t__,int ,unsigned int) ;
 scalar_t__ nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int,unsigned int) ;

__attribute__((used)) static int nft_extension_dump_info(struct sk_buff *skb, int attr,
       const void *info,
       unsigned int size, unsigned int user_size)
{
 unsigned int info_size, aligned_size = XT_ALIGN(size);
 struct nlattr *nla;

 nla = nla_reserve(skb, attr, aligned_size);
 if (!nla)
  return -1;

 info_size = user_size ? : size;
 memcpy(nla_data(nla), info, info_size);
 memset(nla_data(nla) + info_size, 0, aligned_size - info_size);

 return 0;
}
