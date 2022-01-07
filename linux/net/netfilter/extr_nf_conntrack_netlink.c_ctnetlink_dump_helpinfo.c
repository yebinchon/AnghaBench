
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_helper {int (* to_nlattr ) (struct sk_buff*,struct nf_conn const*) ;int name; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {int dummy; } ;


 int CTA_HELP ;
 int CTA_HELP_NAME ;
 struct nf_conn_help* nfct_help (struct nf_conn const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 struct nf_conntrack_helper* rcu_dereference (int ) ;
 int stub1 (struct sk_buff*,struct nf_conn const*) ;

__attribute__((used)) static int ctnetlink_dump_helpinfo(struct sk_buff *skb,
       const struct nf_conn *ct)
{
 struct nlattr *nest_helper;
 const struct nf_conn_help *help = nfct_help(ct);
 struct nf_conntrack_helper *helper;

 if (!help)
  return 0;

 helper = rcu_dereference(help->helper);
 if (!helper)
  goto out;

 nest_helper = nla_nest_start(skb, CTA_HELP);
 if (!nest_helper)
  goto nla_put_failure;
 if (nla_put_string(skb, CTA_HELP_NAME, helper->name))
  goto nla_put_failure;

 if (helper->to_nlattr)
  helper->to_nlattr(skb, ct);

 nla_nest_end(skb, nest_helper);
out:
 return 0;

nla_put_failure:
 return -1;
}
