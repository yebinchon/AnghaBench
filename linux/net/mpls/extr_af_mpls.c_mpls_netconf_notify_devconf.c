
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct mpls_dev {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 int RTNLGRP_MPLS_NETCONF ;
 int WARN_ON (int) ;
 int kfree_skb (struct sk_buff*) ;
 int mpls_netconf_fill_devconf (struct sk_buff*,struct mpls_dev*,int ,int ,int,int ,int) ;
 int mpls_netconf_msgsize_devconf (int) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static void mpls_netconf_notify_devconf(struct net *net, int event,
     int type, struct mpls_dev *mdev)
{
 struct sk_buff *skb;
 int err = -ENOBUFS;

 skb = nlmsg_new(mpls_netconf_msgsize_devconf(type), GFP_KERNEL);
 if (!skb)
  goto errout;

 err = mpls_netconf_fill_devconf(skb, mdev, 0, 0, event, 0, type);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }

 rtnl_notify(skb, net, 0, RTNLGRP_MPLS_NETCONF, ((void*)0), GFP_KERNEL);
 return;
errout:
 if (err < 0)
  rtnl_set_sk_err(net, RTNLGRP_MPLS_NETCONF, err);
}
