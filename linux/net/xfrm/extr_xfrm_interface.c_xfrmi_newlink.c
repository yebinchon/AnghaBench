
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_if_parms {int dummy; } ;
struct xfrm_if {struct net_device* dev; struct net* net; struct xfrm_if_parms p; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int EEXIST ;
 struct net* dev_net (struct net_device*) ;
 struct xfrm_if* netdev_priv (struct net_device*) ;
 int xfrmi_create (struct net_device*) ;
 struct xfrm_if* xfrmi_locate (struct net*,struct xfrm_if_parms*) ;
 int xfrmi_netlink_parms (struct nlattr**,struct xfrm_if_parms*) ;

__attribute__((used)) static int xfrmi_newlink(struct net *src_net, struct net_device *dev,
   struct nlattr *tb[], struct nlattr *data[],
   struct netlink_ext_ack *extack)
{
 struct net *net = dev_net(dev);
 struct xfrm_if_parms p;
 struct xfrm_if *xi;
 int err;

 xfrmi_netlink_parms(data, &p);
 xi = xfrmi_locate(net, &p);
 if (xi)
  return -EEXIST;

 xi = netdev_priv(dev);
 xi->p = p;
 xi->net = net;
 xi->dev = dev;

 err = xfrmi_create(dev);
 return err;
}
