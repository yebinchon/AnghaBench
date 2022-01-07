
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct inet6_dev {int dev; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTNLGRP_IPV6_IFINFO ;
 int WARN_ON (int) ;
 struct net* dev_net (int ) ;
 int inet6_fill_ifinfo (struct sk_buff*,struct inet6_dev*,int ,int ,int,int ) ;
 int inet6_if_nlmsg_size () ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

void inet6_ifinfo_notify(int event, struct inet6_dev *idev)
{
 struct sk_buff *skb;
 struct net *net = dev_net(idev->dev);
 int err = -ENOBUFS;

 skb = nlmsg_new(inet6_if_nlmsg_size(), GFP_ATOMIC);
 if (!skb)
  goto errout;

 err = inet6_fill_ifinfo(skb, idev, 0, 0, event, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_IPV6_IFINFO, ((void*)0), GFP_ATOMIC);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_IPV6_IFINFO, err);
}
