
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct net_bridge_port {TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int NTF_SELF ;
 int RTNLGRP_MDB ;
 struct net* dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_populate_rtr_fill (struct sk_buff*,struct net_device*,int,int ,int ,int,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_rtr_nlmsg_size () ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

void br_rtr_notify(struct net_device *dev, struct net_bridge_port *port,
     int type)
{
 struct net *net = dev_net(dev);
 struct sk_buff *skb;
 int err = -ENOBUFS;
 int ifindex;

 ifindex = port ? port->dev->ifindex : 0;
 skb = nlmsg_new(rtnl_rtr_nlmsg_size(), GFP_ATOMIC);
 if (!skb)
  goto errout;

 err = nlmsg_populate_rtr_fill(skb, dev, ifindex, 0, 0, type, NTF_SELF);
 if (err < 0) {
  kfree_skb(skb);
  goto errout;
 }

 rtnl_notify(skb, net, 0, RTNLGRP_MDB, ((void*)0), GFP_ATOMIC);
 return;

errout:
 rtnl_set_sk_err(net, RTNLGRP_MDB, err);
}
