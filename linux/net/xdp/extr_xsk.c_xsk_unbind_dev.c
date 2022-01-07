
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_sock {scalar_t__ state; struct net_device* dev; int umem; } ;
struct net_device {int dummy; } ;


 int WRITE_ONCE (scalar_t__,int ) ;
 scalar_t__ XSK_BOUND ;
 int XSK_UNBOUND ;
 int dev_put (struct net_device*) ;
 int synchronize_net () ;
 int xdp_del_sk_umem (int ,struct xdp_sock*) ;

__attribute__((used)) static void xsk_unbind_dev(struct xdp_sock *xs)
{
 struct net_device *dev = xs->dev;

 if (xs->state != XSK_BOUND)
  return;
 WRITE_ONCE(xs->state, XSK_UNBOUND);


 xdp_del_sk_umem(xs->umem, xs);
 xs->dev = ((void*)0);
 synchronize_net();
 dev_put(dev);
}
