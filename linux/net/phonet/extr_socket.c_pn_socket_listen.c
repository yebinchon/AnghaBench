
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;


 int EINVAL ;
 int ENOBUFS ;
 scalar_t__ SS_UNCONNECTED ;
 scalar_t__ TCP_LISTEN ;
 int lock_sock (struct sock*) ;
 scalar_t__ pn_socket_autobind (struct socket*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int pn_socket_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int err = 0;

 if (pn_socket_autobind(sock))
  return -ENOBUFS;

 lock_sock(sk);
 if (sock->state != SS_UNCONNECTED) {
  err = -EINVAL;
  goto out;
 }

 if (sk->sk_state != TCP_LISTEN) {
  sk->sk_state = TCP_LISTEN;
  sk->sk_ack_backlog = 0;
 }
 sk->sk_max_ack_backlog = backlog;
out:
 release_sock(sk);
 return err;
}
