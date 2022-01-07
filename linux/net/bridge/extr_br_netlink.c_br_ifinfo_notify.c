
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int name; } ;
struct net_bridge_port {int port_no; struct net_bridge* br; struct net_device* dev; } ;
struct net_bridge {struct net_device* dev; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int RTEXT_FILTER_BRVLAN_COMPRESSED ;
 int RTNLGRP_LINK ;
 scalar_t__ WARN_ON (int) ;
 int br_debug (struct net_bridge const*,char*,int ,int ,int) ;
 int br_fill_ifinfo (struct sk_buff*,struct net_bridge_port const*,int ,int ,int,int ,int ,struct net_device*) ;
 int br_nlmsg_size (struct net_device*,int ) ;
 struct net* dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

void br_ifinfo_notify(int event, const struct net_bridge *br,
        const struct net_bridge_port *port)
{
 u32 filter = RTEXT_FILTER_BRVLAN_COMPRESSED;
 struct net_device *dev;
 struct sk_buff *skb;
 int err = -ENOBUFS;
 struct net *net;
 u16 port_no = 0;

 if (WARN_ON(!port && !br))
  return;

 if (port) {
  dev = port->dev;
  br = port->br;
  port_no = port->port_no;
 } else {
  dev = br->dev;
 }

 net = dev_net(dev);
 br_debug(br, "port %u(%s) event %d\n", port_no, dev->name, event);

 skb = nlmsg_new(br_nlmsg_size(dev, filter), GFP_ATOMIC);
 if (skb == ((void*)0))
  goto errout;

 err = br_fill_ifinfo(skb, port, 0, 0, event, 0, filter, dev);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout;
 }
 rtnl_notify(skb, net, 0, RTNLGRP_LINK, ((void*)0), GFP_ATOMIC);
 return;
errout:
 rtnl_set_sk_err(net, RTNLGRP_LINK, err);
}
