
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nla_policy {int dummy; } ;


 int NLA_ALIGN (int) ;
 int memset (struct nlattr**,int ,int) ;
 int nla_attr_size (int ) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_deprecated (struct nlattr**,int,int,int,struct nla_policy const*,int *) ;

__attribute__((used)) static int parse_attr(struct nlattr *tb[], int maxtype, struct nlattr *nla,
        const struct nla_policy *policy, int len)
{
 int nested_len = nla_len(nla) - NLA_ALIGN(len);

 if (nested_len >= nla_attr_size(0))
  return nla_parse_deprecated(tb, maxtype,
         nla_data(nla) + NLA_ALIGN(len),
         nested_len, policy, ((void*)0));

 memset(tb, 0, sizeof(struct nlattr *) * (maxtype + 1));
 return 0;
}
