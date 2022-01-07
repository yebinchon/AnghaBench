
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tcf_block {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;


 struct tcf_proto* tcf_get_next_proto (struct tcf_chain*,struct tcf_proto*,int) ;
 int tfilter_notify (struct net*,struct sk_buff*,struct nlmsghdr*,struct tcf_proto*,struct tcf_block*,struct Qdisc*,int ,int *,int,int,int) ;

__attribute__((used)) static void tfilter_notify_chain(struct net *net, struct sk_buff *oskb,
     struct tcf_block *block, struct Qdisc *q,
     u32 parent, struct nlmsghdr *n,
     struct tcf_chain *chain, int event,
     bool rtnl_held)
{
 struct tcf_proto *tp;

 for (tp = tcf_get_next_proto(chain, ((void*)0), rtnl_held);
      tp; tp = tcf_get_next_proto(chain, tp, rtnl_held))
  tfilter_notify(net, oskb, n, tp, block,
          q, parent, ((void*)0), event, 0, rtnl_held);
}
