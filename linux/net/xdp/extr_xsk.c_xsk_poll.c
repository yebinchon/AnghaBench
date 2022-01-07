
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_umem {scalar_t__ need_wakeup; } ;
struct xdp_sock {scalar_t__ tx; scalar_t__ rx; int queue_id; struct xdp_umem* umem; struct net_device* dev; } ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct poll_table_struct {int dummy; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* ndo_xsk_wakeup ) (struct net_device*,int ,scalar_t__) ;} ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int __xsk_sendmsg (struct sock*) ;
 unsigned int datagram_poll (struct file*,struct socket*,struct poll_table_struct*) ;
 int stub1 (struct net_device*,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 struct xdp_sock* xdp_sk (struct sock*) ;
 int xsk_is_bound (struct xdp_sock*) ;
 int xskq_empty_desc (scalar_t__) ;
 int xskq_full_desc (scalar_t__) ;

__attribute__((used)) static unsigned int xsk_poll(struct file *file, struct socket *sock,
        struct poll_table_struct *wait)
{
 unsigned int mask = datagram_poll(file, sock, wait);
 struct sock *sk = sock->sk;
 struct xdp_sock *xs = xdp_sk(sk);
 struct net_device *dev;
 struct xdp_umem *umem;

 if (unlikely(!xsk_is_bound(xs)))
  return mask;

 dev = xs->dev;
 umem = xs->umem;

 if (umem->need_wakeup) {
  if (dev->netdev_ops->ndo_xsk_wakeup)
   dev->netdev_ops->ndo_xsk_wakeup(dev, xs->queue_id,
       umem->need_wakeup);
  else

   __xsk_sendmsg(sk);
 }

 if (xs->rx && !xskq_empty_desc(xs->rx))
  mask |= POLLIN | POLLRDNORM;
 if (xs->tx && !xskq_full_desc(xs->tx))
  mask |= POLLOUT | POLLWRNORM;

 return mask;
}
