
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct net {int dummy; } ;
struct mpls_route {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_MPLS_ROUTE ;
 int WARN_ON (int) ;
 int kfree_skb (struct sk_buff*) ;
 int lfib_nlmsg_size (struct mpls_route*) ;
 int mpls_dump_route (struct sk_buff*,int ,int ,int,int ,struct mpls_route*,unsigned int) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,struct nlmsghdr*,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void rtmsg_lfib(int event, u32 label, struct mpls_route *rt,
         struct nlmsghdr *nlh, struct net *net, u32 portid,
         unsigned int nlm_flags)
{
 struct sk_buff *skb;
 u32 seq = nlh ? nlh->nlmsg_seq : 0;
 int err = -ENOBUFS;

 skb = nlmsg_new(lfib_nlmsg_size(rt), GFP_KERNEL);
 if (skb == ((void*)0))
  goto errout;

 err = mpls_dump_route(skb, portid, seq, event, label, rt, nlm_flags);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, portid, RTNLGRP_MPLS_ROUTE, nlh, GFP_KERNEL);

 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_MPLS_ROUTE, err);
}
