
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {TYPE_1__* idev; } ;
struct inet6_fill_args {int event; int netnsid; int flags; int seq; int portid; } ;
struct TYPE_2__ {int dev; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTNLGRP_IPV6_IFADDR ;
 int WARN_ON (int) ;
 struct net* dev_net (int ) ;
 int inet6_fill_ifaddr (struct sk_buff*,struct inet6_ifaddr*,struct inet6_fill_args*) ;
 int inet6_ifaddr_msgsize () ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void inet6_ifa_notify(int event, struct inet6_ifaddr *ifa)
{
 struct sk_buff *skb;
 struct net *net = dev_net(ifa->idev->dev);
 struct inet6_fill_args fillargs = {
  .portid = 0,
  .seq = 0,
  .event = event,
  .flags = 0,
  .netnsid = -1,
 };
 int err = -ENOBUFS;

 skb = nlmsg_new(inet6_ifaddr_msgsize(), GFP_ATOMIC);
 if (!skb)
  goto errout;

 err = inet6_fill_ifaddr(skb, ifa, &fillargs);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_IPV6_IFADDR, ((void*)0), GFP_ATOMIC);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_IPV6_IFADDR, err);
}
