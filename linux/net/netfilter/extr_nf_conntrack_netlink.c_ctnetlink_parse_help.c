
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 size_t CTA_HELP_INFO ;
 int CTA_HELP_MAX ;
 size_t CTA_HELP_NAME ;
 int EINVAL ;
 int help_nla_policy ;
 char* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;

__attribute__((used)) static int ctnetlink_parse_help(const struct nlattr *attr, char **helper_name,
    struct nlattr **helpinfo)
{
 int err;
 struct nlattr *tb[CTA_HELP_MAX+1];

 err = nla_parse_nested_deprecated(tb, CTA_HELP_MAX, attr,
       help_nla_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!tb[CTA_HELP_NAME])
  return -EINVAL;

 *helper_name = nla_data(tb[CTA_HELP_NAME]);

 if (tb[CTA_HELP_INFO])
  *helpinfo = tb[CTA_HELP_INFO];

 return 0;
}
