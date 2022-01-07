
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int RTNLGRP_LINK ;
 struct net* dev_net (struct net_device*) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;

void rtmsg_ifinfo_send(struct sk_buff *skb, struct net_device *dev, gfp_t flags)
{
 struct net *net = dev_net(dev);

 rtnl_notify(skb, net, 0, RTNLGRP_LINK, ((void*)0), flags);
}
