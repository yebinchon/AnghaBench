
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcf_proto_ops {int dummy; } ;
struct tcf_block {struct net* net; } ;
struct sk_buff {int dummy; } ;
struct net {int rtnl; } ;
struct TYPE_2__ {int portid; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_GOODSIZE ;
 int NLM_F_ECHO ;
 int RTM_DELCHAIN ;
 int RTNLGRP_TC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (int ,struct sk_buff*,int ,int ) ;
 int rtnetlink_send (struct sk_buff*,struct net*,int ,int ,int) ;
 scalar_t__ tc_chain_fill_node (struct tcf_proto_ops const*,void*,int ,struct net*,struct sk_buff*,struct tcf_block*,int ,int ,int,int ) ;

__attribute__((used)) static int tc_chain_notify_delete(const struct tcf_proto_ops *tmplt_ops,
      void *tmplt_priv, u32 chain_index,
      struct tcf_block *block, struct sk_buff *oskb,
      u32 seq, u16 flags, bool unicast)
{
 u32 portid = oskb ? NETLINK_CB(oskb).portid : 0;
 struct net *net = block->net;
 struct sk_buff *skb;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (tc_chain_fill_node(tmplt_ops, tmplt_priv, chain_index, net, skb,
          block, portid, seq, flags, RTM_DELCHAIN) <= 0) {
  kfree_skb(skb);
  return -EINVAL;
 }

 if (unicast)
  return netlink_unicast(net->rtnl, skb, portid, MSG_DONTWAIT);

 return rtnetlink_send(skb, net, portid, RTNLGRP_TC, flags & NLM_F_ECHO);
}
