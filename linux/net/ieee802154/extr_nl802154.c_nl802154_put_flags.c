
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int ENOBUFS ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int) ;

__attribute__((used)) static int
nl802154_put_flags(struct sk_buff *msg, int attr, u32 mask)
{
 struct nlattr *nl_flags = nla_nest_start_noflag(msg, attr);
 int i;

 if (!nl_flags)
  return -ENOBUFS;

 i = 0;
 while (mask) {
  if ((mask & 1) && nla_put_flag(msg, i))
   return -ENOBUFS;

  mask >>= 1;
  i++;
 }

 nla_nest_end(msg, nl_flags);
 return 0;
}
