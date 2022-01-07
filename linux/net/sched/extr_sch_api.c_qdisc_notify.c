
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int NLM_F_ECHO ;
 int NLM_F_REPLACE ;
 int RTM_DELQDISC ;
 int RTM_NEWQDISC ;
 int RTNLGRP_TC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rtnetlink_send (struct sk_buff*,struct net*,int ,int ,int) ;
 scalar_t__ tc_fill_qdisc (struct sk_buff*,struct Qdisc*,int ,int ,int ,int ,int ) ;
 int tc_qdisc_dump_ignore (struct Qdisc*,int) ;

__attribute__((used)) static int qdisc_notify(struct net *net, struct sk_buff *oskb,
   struct nlmsghdr *n, u32 clid,
   struct Qdisc *old, struct Qdisc *new)
{
 struct sk_buff *skb;
 u32 portid = oskb ? NETLINK_CB(oskb).portid : 0;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (old && !tc_qdisc_dump_ignore(old, 0)) {
  if (tc_fill_qdisc(skb, old, clid, portid, n->nlmsg_seq,
      0, RTM_DELQDISC) < 0)
   goto err_out;
 }
 if (new && !tc_qdisc_dump_ignore(new, 0)) {
  if (tc_fill_qdisc(skb, new, clid, portid, n->nlmsg_seq,
      old ? NLM_F_REPLACE : 0, RTM_NEWQDISC) < 0)
   goto err_out;
 }

 if (skb->len)
  return rtnetlink_send(skb, net, portid, RTNLGRP_TC,
          n->nlmsg_flags & NLM_F_ECHO);

err_out:
 kfree_skb(skb);
 return -EINVAL;
}
