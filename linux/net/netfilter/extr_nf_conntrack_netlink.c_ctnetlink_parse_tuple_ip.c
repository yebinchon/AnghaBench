
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_2__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ src; } ;


 int CTA_IP_MAX ;


 int cta_ip_nla_policy ;
 int ipv4_nlattr_to_tuple (struct nlattr**,struct nf_conntrack_tuple*) ;
 int ipv6_nlattr_to_tuple (struct nlattr**,struct nf_conntrack_tuple*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int nla_validate_nested_deprecated (struct nlattr*,int ,int ,int *) ;

__attribute__((used)) static int ctnetlink_parse_tuple_ip(struct nlattr *attr,
        struct nf_conntrack_tuple *tuple)
{
 struct nlattr *tb[CTA_IP_MAX+1];
 int ret = 0;

 ret = nla_parse_nested_deprecated(tb, CTA_IP_MAX, attr, ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 ret = nla_validate_nested_deprecated(attr, CTA_IP_MAX,
          cta_ip_nla_policy, ((void*)0));
 if (ret)
  return ret;

 switch (tuple->src.l3num) {
 case 129:
  ret = ipv4_nlattr_to_tuple(tb, tuple);
  break;
 case 128:
  ret = ipv6_nlattr_to_tuple(tb, tuple);
  break;
 }

 return ret;
}
