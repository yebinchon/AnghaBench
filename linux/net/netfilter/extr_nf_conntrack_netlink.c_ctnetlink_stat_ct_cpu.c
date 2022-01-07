
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_dump_control {int dump; } ;
struct net {int dummy; } ;


 int NLM_F_DUMP ;
 int ctnetlink_ct_stat_cpu_dump ;
 int netlink_dump_start (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;

__attribute__((used)) static int ctnetlink_stat_ct_cpu(struct net *net, struct sock *ctnl,
     struct sk_buff *skb,
     const struct nlmsghdr *nlh,
     const struct nlattr * const cda[],
     struct netlink_ext_ack *extack)
{
 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .dump = ctnetlink_ct_stat_cpu_dump,
  };
  return netlink_dump_start(ctnl, skb, nlh, &c);
 }

 return 0;
}
