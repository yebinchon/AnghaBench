
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtgenmsg {int rtgen_family; } ;
struct nlmsghdr {int dummy; } ;
struct net_fill_args {int ref_nsid; scalar_t__ add_ref; int nsid; int flags; int cmd; int seq; int portid; } ;


 int AF_UNSPEC ;
 int EMSGSIZE ;
 int NETNSA_CURRENT_NSID ;
 int NETNSA_NSID ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int rtnl_net_fill(struct sk_buff *skb, struct net_fill_args *args)
{
 struct nlmsghdr *nlh;
 struct rtgenmsg *rth;

 nlh = nlmsg_put(skb, args->portid, args->seq, args->cmd, sizeof(*rth),
   args->flags);
 if (!nlh)
  return -EMSGSIZE;

 rth = nlmsg_data(nlh);
 rth->rtgen_family = AF_UNSPEC;

 if (nla_put_s32(skb, NETNSA_NSID, args->nsid))
  goto nla_put_failure;

 if (args->add_ref &&
     nla_put_s32(skb, NETNSA_CURRENT_NSID, args->ref_nsid))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
