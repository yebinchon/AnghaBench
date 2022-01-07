
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcf_chain {int index; int tmplt_priv; int tmplt_ops; struct tcf_block* block; } ;
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
 int RTNLGRP_TC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (int ,struct sk_buff*,int ,int ) ;
 int rtnetlink_send (struct sk_buff*,struct net*,int ,int ,int) ;
 scalar_t__ tc_chain_fill_node (int ,int ,int ,struct net*,struct sk_buff*,struct tcf_block*,int ,int ,int,int) ;

__attribute__((used)) static int tc_chain_notify(struct tcf_chain *chain, struct sk_buff *oskb,
      u32 seq, u16 flags, int event, bool unicast)
{
 u32 portid = oskb ? NETLINK_CB(oskb).portid : 0;
 struct tcf_block *block = chain->block;
 struct net *net = block->net;
 struct sk_buff *skb;
 int err = 0;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 if (tc_chain_fill_node(chain->tmplt_ops, chain->tmplt_priv,
          chain->index, net, skb, block, portid,
          seq, flags, event) <= 0) {
  kfree_skb(skb);
  return -EINVAL;
 }

 if (unicast)
  err = netlink_unicast(net->rtnl, skb, portid, MSG_DONTWAIT);
 else
  err = rtnetlink_send(skb, net, portid, RTNLGRP_TC,
         flags & NLM_F_ECHO);

 if (err > 0)
  err = 0;
 return err;
}
