
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_sock {scalar_t__ zc; int tx; TYPE_1__* dev; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ENETDOWN ;
 int ENOBUFS ;
 int IFF_UP ;
 scalar_t__ unlikely (int) ;
 struct xdp_sock* xdp_sk (struct sock*) ;
 int xsk_generic_xmit (struct sock*) ;
 int xsk_zc_xmit (struct xdp_sock*) ;

__attribute__((used)) static int __xsk_sendmsg(struct sock *sk)
{
 struct xdp_sock *xs = xdp_sk(sk);

 if (unlikely(!(xs->dev->flags & IFF_UP)))
  return -ENETDOWN;
 if (unlikely(!xs->tx))
  return -ENOBUFS;

 return xs->zc ? xsk_zc_xmit(xs) : xsk_generic_xmit(sk);
}
