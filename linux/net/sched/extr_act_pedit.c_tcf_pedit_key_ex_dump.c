
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_pedit_key_ex {int cmd; int htype; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EINVAL ;
 int TCA_PEDIT_KEYS_EX ;
 int TCA_PEDIT_KEY_EX ;
 int TCA_PEDIT_KEY_EX_CMD ;
 int TCA_PEDIT_KEY_EX_HTYPE ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int tcf_pedit_key_ex_dump(struct sk_buff *skb,
     struct tcf_pedit_key_ex *keys_ex, int n)
{
 struct nlattr *keys_start = nla_nest_start_noflag(skb,
         TCA_PEDIT_KEYS_EX);

 if (!keys_start)
  goto nla_failure;
 for (; n > 0; n--) {
  struct nlattr *key_start;

  key_start = nla_nest_start_noflag(skb, TCA_PEDIT_KEY_EX);
  if (!key_start)
   goto nla_failure;

  if (nla_put_u16(skb, TCA_PEDIT_KEY_EX_HTYPE, keys_ex->htype) ||
      nla_put_u16(skb, TCA_PEDIT_KEY_EX_CMD, keys_ex->cmd))
   goto nla_failure;

  nla_nest_end(skb, key_start);

  keys_ex++;
 }

 nla_nest_end(skb, keys_start);

 return 0;
nla_failure:
 nla_nest_cancel(skb, keys_start);
 return -EINVAL;
}
