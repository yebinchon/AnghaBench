
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {scalar_t__ sk_type; int sk_shutdown; int (* sk_state_change ) (struct sock*) ;} ;


 int EINVAL ;
 int ENOTCONN ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SS_DISCONNECTING ;
 scalar_t__ SS_UNCONNECTED ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int vsock_send_shutdown (struct sock*,int) ;

__attribute__((used)) static int vsock_shutdown(struct socket *sock, int mode)
{
 int err;
 struct sock *sk;







 mode++;

 if ((mode & ~SHUTDOWN_MASK) || !mode)
  return -EINVAL;







 sk = sock->sk;
 if (sock->state == SS_UNCONNECTED) {
  err = -ENOTCONN;
  if (sk->sk_type == SOCK_STREAM)
   return err;
 } else {
  sock->state = SS_DISCONNECTING;
  err = 0;
 }


 mode = mode & (RCV_SHUTDOWN | SEND_SHUTDOWN);
 if (mode) {
  lock_sock(sk);
  sk->sk_shutdown |= mode;
  sk->sk_state_change(sk);
  release_sock(sk);

  if (sk->sk_type == SOCK_STREAM) {
   sock_reset_flag(sk, SOCK_DONE);
   vsock_send_shutdown(sk, mode);
  }
 }

 return err;
}
