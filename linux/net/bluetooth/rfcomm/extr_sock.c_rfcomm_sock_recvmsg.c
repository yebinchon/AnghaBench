
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_rcvbuf; int sk_rmem_alloc; } ;
struct rfcomm_dlc {int flags; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {struct rfcomm_dlc* dlc; } ;


 int MSG_PEEK ;
 int RFCOMM_DEFER_SETUP ;
 int atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int bt_sock_stream_recvmsg (struct socket*,struct msghdr*,size_t,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int rfcomm_dlc_accept (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unthrottle (struct rfcomm_dlc*) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int rfcomm_sock_recvmsg(struct socket *sock, struct msghdr *msg,
          size_t size, int flags)
{
 struct sock *sk = sock->sk;
 struct rfcomm_dlc *d = rfcomm_pi(sk)->dlc;
 int len;

 if (test_and_clear_bit(RFCOMM_DEFER_SETUP, &d->flags)) {
  rfcomm_dlc_accept(d);
  return 0;
 }

 len = bt_sock_stream_recvmsg(sock, msg, size, flags);

 lock_sock(sk);
 if (!(flags & MSG_PEEK) && len > 0)
  atomic_sub(len, &sk->sk_rmem_alloc);

 if (atomic_read(&sk->sk_rmem_alloc) <= (sk->sk_rcvbuf >> 2))
  rfcomm_dlc_unthrottle(rfcomm_pi(sk)->dlc);
 release_sock(sk);

 return len;
}
