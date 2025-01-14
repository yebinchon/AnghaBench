
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conn {int status; } ;


 int CTA_TUPLE_MASTER ;
 int IPS_EXPECTED ;
 scalar_t__ ctnetlink_dump_tuples (struct sk_buff*,int ) ;
 int master_tuple (struct nf_conn const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int ctnetlink_dump_master(struct sk_buff *skb, const struct nf_conn *ct)
{
 struct nlattr *nest_parms;

 if (!(ct->status & IPS_EXPECTED))
  return 0;

 nest_parms = nla_nest_start(skb, CTA_TUPLE_MASTER);
 if (!nest_parms)
  goto nla_put_failure;
 if (ctnetlink_dump_tuples(skb, master_tuple(ct)) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest_parms);

 return 0;

nla_put_failure:
 return -1;
}
