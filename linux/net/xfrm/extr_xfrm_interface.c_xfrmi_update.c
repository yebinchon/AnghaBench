
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrmi_net {int dummy; } ;
struct xfrm_if_parms {int dummy; } ;
struct xfrm_if {int dev; struct net* net; } ;
struct net {int dummy; } ;


 struct xfrmi_net* net_generic (struct net*,int ) ;
 int netdev_state_change (int ) ;
 int synchronize_net () ;
 int xfrmi_change (struct xfrm_if*,struct xfrm_if_parms*) ;
 int xfrmi_link (struct xfrmi_net*,struct xfrm_if*) ;
 int xfrmi_net_id ;
 int xfrmi_unlink (struct xfrmi_net*,struct xfrm_if*) ;

__attribute__((used)) static int xfrmi_update(struct xfrm_if *xi, struct xfrm_if_parms *p)
{
 struct net *net = xi->net;
 struct xfrmi_net *xfrmn = net_generic(net, xfrmi_net_id);
 int err;

 xfrmi_unlink(xfrmn, xi);
 synchronize_net();
 err = xfrmi_change(xi, p);
 xfrmi_link(xfrmn, xi);
 netdev_state_change(xi->dev);
 return err;
}
