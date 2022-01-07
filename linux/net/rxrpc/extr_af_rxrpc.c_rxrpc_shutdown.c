
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {int lock; } ;
struct sock {scalar_t__ sk_state; TYPE_1__ sk_receive_queue; int sk_shutdown; } ;
struct rxrpc_sock {int dummy; } ;


 int EOPNOTSUPP ;
 int ESHUTDOWN ;
 scalar_t__ RXRPC_CLOSE ;
 int SHUTDOWN_MASK ;
 int SHUT_RDWR ;
 int _enter (char*,struct sock*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int rxrpc_discard_prealloc (struct rxrpc_sock*) ;
 struct rxrpc_sock* rxrpc_sk (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int rxrpc_shutdown(struct socket *sock, int flags)
{
 struct sock *sk = sock->sk;
 struct rxrpc_sock *rx = rxrpc_sk(sk);
 int ret = 0;

 _enter("%p,%d", sk, flags);

 if (flags != SHUT_RDWR)
  return -EOPNOTSUPP;
 if (sk->sk_state == RXRPC_CLOSE)
  return -ESHUTDOWN;

 lock_sock(sk);

 spin_lock_bh(&sk->sk_receive_queue.lock);
 if (sk->sk_state < RXRPC_CLOSE) {
  sk->sk_state = RXRPC_CLOSE;
  sk->sk_shutdown = SHUTDOWN_MASK;
 } else {
  ret = -ESHUTDOWN;
 }
 spin_unlock_bh(&sk->sk_receive_queue.lock);

 rxrpc_discard_prealloc(rx);

 release_sock(sk);
 return ret;
}
