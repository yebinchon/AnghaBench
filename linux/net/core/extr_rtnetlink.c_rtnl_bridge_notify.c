
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* ndo_bridge_getlink ) (struct sk_buff*,int ,int ,struct net_device*,int ,int ) ;} ;


 int EMSGSIZE ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int RTNLGRP_LINK ;
 int WARN_ON (int) ;
 int bridge_nlmsg_size () ;
 struct net* dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;
 int stub1 (struct sk_buff*,int ,int ,struct net_device*,int ,int ) ;

__attribute__((used)) static int rtnl_bridge_notify(struct net_device *dev)
{
 struct net *net = dev_net(dev);
 struct sk_buff *skb;
 int err = -EOPNOTSUPP;

 if (!dev->netdev_ops->ndo_bridge_getlink)
  return 0;

 skb = nlmsg_new(bridge_nlmsg_size(), GFP_ATOMIC);
 if (!skb) {
  err = -ENOMEM;
  goto errout;
 }

 err = dev->netdev_ops->ndo_bridge_getlink(skb, 0, 0, dev, 0, 0);
 if (err < 0)
  goto errout;

 if (!skb->len)
  goto errout;

 rtnl_notify(skb, net, 0, RTNLGRP_LINK, ((void*)0), GFP_ATOMIC);
 return 0;
errout:
 WARN_ON(err == -EMSGSIZE);
 kfree_skb(skb);
 if (err)
  rtnl_set_sk_err(net, RTNLGRP_LINK, err);
 return err;
}
