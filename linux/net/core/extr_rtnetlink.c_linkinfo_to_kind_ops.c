
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_ops {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int kind ;


 size_t IFLA_INFO_KIND ;
 int IFLA_INFO_MAX ;
 int MODULE_NAME_LEN ;
 int ifla_info_policy ;
 scalar_t__ nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 struct rtnl_link_ops* rtnl_link_ops_get (char*) ;

__attribute__((used)) static const struct rtnl_link_ops *linkinfo_to_kind_ops(const struct nlattr *nla)
{
 const struct rtnl_link_ops *ops = ((void*)0);
 struct nlattr *linfo[IFLA_INFO_MAX + 1];

 if (nla_parse_nested_deprecated(linfo, IFLA_INFO_MAX, nla, ifla_info_policy, ((void*)0)) < 0)
  return ((void*)0);

 if (linfo[IFLA_INFO_KIND]) {
  char kind[MODULE_NAME_LEN];

  nla_strlcpy(kind, linfo[IFLA_INFO_KIND], sizeof(kind));
  ops = rtnl_link_ops_get(kind);
 }

 return ops;
}
