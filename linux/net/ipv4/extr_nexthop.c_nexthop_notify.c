
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nl_info {int nl_net; TYPE_1__* nlh; int portid; } ;
struct nexthop {int dummy; } ;
struct TYPE_2__ {unsigned int nlmsg_flags; int nlmsg_seq; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int RTNLGRP_NEXTHOP ;
 int WARN_ON (int) ;
 int gfp_any () ;
 int kfree_skb (struct sk_buff*) ;
 int nh_fill_node (struct sk_buff*,struct nexthop*,int,int ,int ,unsigned int) ;
 int nh_nlmsg_size (struct nexthop*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,int ,int ,int ,TYPE_1__*,int ) ;
 int rtnl_set_sk_err (int ,int ,int) ;

__attribute__((used)) static void nexthop_notify(int event, struct nexthop *nh, struct nl_info *info)
{
 unsigned int nlflags = info->nlh ? info->nlh->nlmsg_flags : 0;
 u32 seq = info->nlh ? info->nlh->nlmsg_seq : 0;
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(nh_nlmsg_size(nh), gfp_any());
 if (!skb)
  goto errout;

 err = nh_fill_node(skb, nh, event, info->portid, seq, nlflags);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }

 rtnl_notify(skb, info->nl_net, info->portid, RTNLGRP_NEXTHOP,
      info->nlh, gfp_any());
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(info->nl_net, RTNLGRP_NEXTHOP, err);
}
