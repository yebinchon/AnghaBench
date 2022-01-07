
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {scalar_t__ sk_type; int sk_max_ack_backlog; scalar_t__ sk_state; TYPE_1__* sk_socket; scalar_t__ sk_ack_backlog; } ;
struct TYPE_2__ {int flags; } ;


 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ SOCK_STREAM ;
 int SOCK_ZAPPED ;
 scalar_t__ SS_UNCONNECTED ;
 scalar_t__ TCP_LISTEN ;
 int __SO_ACCEPTCON ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int llc_ui_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int rc = -EINVAL;

 lock_sock(sk);
 if (unlikely(sock->state != SS_UNCONNECTED))
  goto out;
 rc = -EOPNOTSUPP;
 if (unlikely(sk->sk_type != SOCK_STREAM))
  goto out;
 rc = -EAGAIN;
 if (sock_flag(sk, SOCK_ZAPPED))
  goto out;
 rc = 0;
 if (!(unsigned int)backlog)
  backlog = 1;
 sk->sk_max_ack_backlog = backlog;
 if (sk->sk_state != TCP_LISTEN) {
  sk->sk_ack_backlog = 0;
  sk->sk_state = TCP_LISTEN;
 }
 sk->sk_socket->flags |= __SO_ACCEPTCON;
out:
 release_sock(sk);
 return rc;
}
