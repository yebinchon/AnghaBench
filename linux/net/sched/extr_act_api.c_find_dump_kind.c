
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int NLMSG_ALIGN (int ) ;
 size_t TCA_ACT_KIND ;
 int TCA_ACT_MAX ;
 int TCA_ACT_MAX_PRIO ;
 size_t TCA_ACT_TAB ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 scalar_t__ nla_parse_deprecated (struct nlattr**,int ,int ,int ,int *,int *) ;
 scalar_t__ nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int tcf_action_policy ;

__attribute__((used)) static struct nlattr *find_dump_kind(struct nlattr **nla)
{
 struct nlattr *tb1, *tb2[TCA_ACT_MAX + 1];
 struct nlattr *tb[TCA_ACT_MAX_PRIO + 1];
 struct nlattr *kind;

 tb1 = nla[TCA_ACT_TAB];
 if (tb1 == ((void*)0))
  return ((void*)0);

 if (nla_parse_deprecated(tb, TCA_ACT_MAX_PRIO, nla_data(tb1), NLMSG_ALIGN(nla_len(tb1)), ((void*)0), ((void*)0)) < 0)
  return ((void*)0);

 if (tb[1] == ((void*)0))
  return ((void*)0);
 if (nla_parse_nested_deprecated(tb2, TCA_ACT_MAX, tb[1], tcf_action_policy, ((void*)0)) < 0)
  return ((void*)0);
 kind = tb2[TCA_ACT_KIND];

 return kind;
}
