
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_devconf {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_IPV6_NETCONF ;
 int WARN_ON (int) ;
 int inet6_netconf_fill_devconf (struct sk_buff*,int,struct ipv6_devconf*,int ,int ,int,int ,int) ;
 int inet6_netconf_msgsize_devconf (int) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

void inet6_netconf_notify_devconf(struct net *net, int event, int type,
      int ifindex, struct ipv6_devconf *devconf)
{
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(inet6_netconf_msgsize_devconf(type), GFP_KERNEL);
 if (!skb)
  goto errout;

 err = inet6_netconf_fill_devconf(skb, ifindex, devconf, 0, 0,
      event, 0, type);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_IPV6_NETCONF, ((void*)0), GFP_KERNEL);
 return;
errout:
 rtnl_set_sk_err(net, RTNLGRP_IPV6_NETCONF, err);
}
