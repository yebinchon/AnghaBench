
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_sock {int dummy; } ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct msghdr {int msg_flags; } ;


 int ENXIO ;
 int EOPNOTSUPP ;
 int MSG_DONTWAIT ;
 int __xsk_sendmsg (struct sock*) ;
 scalar_t__ unlikely (int) ;
 struct xdp_sock* xdp_sk (struct sock*) ;
 int xsk_is_bound (struct xdp_sock*) ;

__attribute__((used)) static int xsk_sendmsg(struct socket *sock, struct msghdr *m, size_t total_len)
{
 bool need_wait = !(m->msg_flags & MSG_DONTWAIT);
 struct sock *sk = sock->sk;
 struct xdp_sock *xs = xdp_sk(sk);

 if (unlikely(!xsk_is_bound(xs)))
  return -ENXIO;
 if (unlikely(need_wait))
  return -EOPNOTSUPP;

 return __xsk_sendmsg(sk);
}
