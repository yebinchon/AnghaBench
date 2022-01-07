
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 size_t NLMSG_GOODSIZE ;
 int NLM_F_ECHO ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int RTM_NEWACTION ;
 int RTNLGRP_TC ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int rtnetlink_send (struct sk_buff*,struct net*,int ,int ,int) ;
 scalar_t__ tca_get_fill (struct sk_buff*,struct tc_action**,int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static int
tcf_add_notify(struct net *net, struct nlmsghdr *n, struct tc_action *actions[],
        u32 portid, size_t attr_size, struct netlink_ext_ack *extack)
{
 struct sk_buff *skb;
 int err = 0;

 skb = alloc_skb(attr_size <= NLMSG_GOODSIZE ? NLMSG_GOODSIZE : attr_size,
   GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (tca_get_fill(skb, actions, portid, n->nlmsg_seq, n->nlmsg_flags,
    RTM_NEWACTION, 0, 0) <= 0) {
  NL_SET_ERR_MSG(extack, "Failed to fill netlink attributes while adding TC action");
  kfree_skb(skb);
  return -EINVAL;
 }

 err = rtnetlink_send(skb, net, portid, RTNLGRP_TC,
        n->nlmsg_flags & NLM_F_ECHO);
 if (err > 0)
  err = 0;
 return err;
}
