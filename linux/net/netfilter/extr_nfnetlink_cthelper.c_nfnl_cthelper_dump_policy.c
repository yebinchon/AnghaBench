
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_helper {int expect_class_max; TYPE_1__* expect_policy; } ;
struct TYPE_2__ {int max_expected; int timeout; int name; } ;


 scalar_t__ NFCTH_POLICY ;
 int NFCTH_POLICY_EXPECT_MAX ;
 int NFCTH_POLICY_EXPECT_TIMEOUT ;
 int NFCTH_POLICY_NAME ;
 scalar_t__ NFCTH_POLICY_SET ;
 int NFCTH_POLICY_SET_NUM ;
 int htonl (int) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,scalar_t__) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
nfnl_cthelper_dump_policy(struct sk_buff *skb,
   struct nf_conntrack_helper *helper)
{
 int i;
 struct nlattr *nest_parms1, *nest_parms2;

 nest_parms1 = nla_nest_start(skb, NFCTH_POLICY);
 if (nest_parms1 == ((void*)0))
  goto nla_put_failure;

 if (nla_put_be32(skb, NFCTH_POLICY_SET_NUM,
    htonl(helper->expect_class_max + 1)))
  goto nla_put_failure;

 for (i = 0; i < helper->expect_class_max + 1; i++) {
  nest_parms2 = nla_nest_start(skb, (NFCTH_POLICY_SET + i));
  if (nest_parms2 == ((void*)0))
   goto nla_put_failure;

  if (nla_put_string(skb, NFCTH_POLICY_NAME,
       helper->expect_policy[i].name))
   goto nla_put_failure;

  if (nla_put_be32(skb, NFCTH_POLICY_EXPECT_MAX,
     htonl(helper->expect_policy[i].max_expected)))
   goto nla_put_failure;

  if (nla_put_be32(skb, NFCTH_POLICY_EXPECT_TIMEOUT,
     htonl(helper->expect_policy[i].timeout)))
   goto nla_put_failure;

  nla_nest_end(skb, nest_parms2);
 }
 nla_nest_end(skb, nest_parms1);
 return 0;

nla_put_failure:
 return -1;
}
