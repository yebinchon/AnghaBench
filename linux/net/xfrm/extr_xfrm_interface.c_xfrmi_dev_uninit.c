
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrmi_net {int dummy; } ;
struct xfrm_if {int net; } ;
struct net_device {int dummy; } ;


 int dev_put (struct net_device*) ;
 struct xfrmi_net* net_generic (int ,int ) ;
 struct xfrm_if* netdev_priv (struct net_device*) ;
 int xfrmi_net_id ;
 int xfrmi_unlink (struct xfrmi_net*,struct xfrm_if*) ;

__attribute__((used)) static void xfrmi_dev_uninit(struct net_device *dev)
{
 struct xfrm_if *xi = netdev_priv(dev);
 struct xfrmi_net *xfrmn = net_generic(xi->net, xfrmi_net_id);

 xfrmi_unlink(xfrmn, xi);
 dev_put(dev);
}
