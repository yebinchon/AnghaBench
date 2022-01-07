
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {scalar_t__ fasync_list; int wait; } ;
struct socket {int flags; } ;
struct sock {int sk_shutdown; int sk_wq; struct socket* sk_socket; } ;


 int EPOLLOUT ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int POLL_OUT ;
 int SEND_SHUTDOWN ;
 int SOCK_NOSPACE ;
 int SOCK_WAKE_SPACE ;
 scalar_t__ __sk_stream_is_writeable (struct sock*,int) ;
 int clear_bit (int ,int *) ;
 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 int sock_wake_async (struct socket_wq*,int ,int ) ;
 int wake_up_interruptible_poll (int *,int) ;

void sk_stream_write_space(struct sock *sk)
{
 struct socket *sock = sk->sk_socket;
 struct socket_wq *wq;

 if (__sk_stream_is_writeable(sk, 1) && sock) {
  clear_bit(SOCK_NOSPACE, &sock->flags);

  rcu_read_lock();
  wq = rcu_dereference(sk->sk_wq);
  if (skwq_has_sleeper(wq))
   wake_up_interruptible_poll(&wq->wait, EPOLLOUT |
      EPOLLWRNORM | EPOLLWRBAND);
  if (wq && wq->fasync_list && !(sk->sk_shutdown & SEND_SHUTDOWN))
   sock_wake_async(wq, SOCK_WAKE_SPACE, POLL_OUT);
  rcu_read_unlock();
 }
}
