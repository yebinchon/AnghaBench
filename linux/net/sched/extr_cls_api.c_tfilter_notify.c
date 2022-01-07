
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_block {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct net {int rtnl; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int NLM_F_ECHO ;
 int RTNLGRP_TC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (int ,struct sk_buff*,int ,int ) ;
 int rtnetlink_send (struct sk_buff*,struct net*,int ,int ,int) ;
 scalar_t__ tcf_fill_node (struct net*,struct sk_buff*,struct tcf_proto*,struct tcf_block*,struct Qdisc*,int ,void*,int ,int ,int,int,int) ;

__attribute__((used)) static int tfilter_notify(struct net *net, struct sk_buff *oskb,
     struct nlmsghdr *n, struct tcf_proto *tp,
     struct tcf_block *block, struct Qdisc *q,
     u32 parent, void *fh, int event, bool unicast,
     bool rtnl_held)
{
 struct sk_buff *skb;
 u32 portid = oskb ? NETLINK_CB(oskb).portid : 0;
 int err = 0;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (tcf_fill_node(net, skb, tp, block, q, parent, fh, portid,
     n->nlmsg_seq, n->nlmsg_flags, event,
     rtnl_held) <= 0) {
  kfree_skb(skb);
  return -EINVAL;
 }

 if (unicast)
  err = netlink_unicast(net->rtnl, skb, portid, MSG_DONTWAIT);
 else
  err = rtnetlink_send(skb, net, portid, RTNLGRP_TC,
         n->nlmsg_flags & NLM_F_ECHO);

 if (err > 0)
  err = 0;
 return err;
}
