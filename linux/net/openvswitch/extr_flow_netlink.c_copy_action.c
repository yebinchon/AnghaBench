
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int dummy; } ;
struct nlattr {int nla_len; } ;


 scalar_t__ IS_ERR (struct nlattr*) ;
 int NLA_ALIGN (int ) ;
 int PTR_ERR (struct nlattr*) ;
 int memcpy (struct nlattr*,struct nlattr const*,int) ;
 struct nlattr* reserve_sfa_size (struct sw_flow_actions**,int ,int) ;

__attribute__((used)) static int copy_action(const struct nlattr *from,
         struct sw_flow_actions **sfa, bool log)
{
 int totlen = NLA_ALIGN(from->nla_len);
 struct nlattr *to;

 to = reserve_sfa_size(sfa, from->nla_len, log);
 if (IS_ERR(to))
  return PTR_ERR(to);

 memcpy(to, from, totlen);
 return 0;
}
