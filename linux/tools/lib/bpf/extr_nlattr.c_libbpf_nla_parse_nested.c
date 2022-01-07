
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct libbpf_nla_policy {int dummy; } ;


 int libbpf_nla_data (struct nlattr*) ;
 int libbpf_nla_len (struct nlattr*) ;
 int libbpf_nla_parse (struct nlattr**,int,int ,int ,struct libbpf_nla_policy*) ;

int libbpf_nla_parse_nested(struct nlattr *tb[], int maxtype,
       struct nlattr *nla,
       struct libbpf_nla_policy *policy)
{
 return libbpf_nla_parse(tb, maxtype, libbpf_nla_data(nla),
    libbpf_nla_len(nla), policy);
}
