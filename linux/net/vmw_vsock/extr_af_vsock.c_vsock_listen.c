
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int local_addr; } ;
struct socket {scalar_t__ type; scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_max_ack_backlog; int sk_state; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SS_UNCONNECTED ;
 int TCP_LISTEN ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int vsock_addr_bound (int *) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static int vsock_listen(struct socket *sock, int backlog)
{
 int err;
 struct sock *sk;
 struct vsock_sock *vsk;

 sk = sock->sk;

 lock_sock(sk);

 if (sock->type != SOCK_STREAM) {
  err = -EOPNOTSUPP;
  goto out;
 }

 if (sock->state != SS_UNCONNECTED) {
  err = -EINVAL;
  goto out;
 }

 vsk = vsock_sk(sk);

 if (!vsock_addr_bound(&vsk->local_addr)) {
  err = -EINVAL;
  goto out;
 }

 sk->sk_max_ack_backlog = backlog;
 sk->sk_state = TCP_LISTEN;

 err = 0;

out:
 release_sock(sk);
 return err;
}
