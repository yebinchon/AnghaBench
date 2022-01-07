
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_receive_queue; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; } ;
struct qrtr_sock {int dummy; } ;


 int SHUTDOWN_MASK ;
 int SOCK_DEAD ;
 int SOCK_ZAPPED ;
 int lock_sock (struct sock*) ;
 int qrtr_port_remove (struct qrtr_sock*) ;
 struct qrtr_sock* qrtr_sk (struct sock*) ;
 int release_sock (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int qrtr_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct qrtr_sock *ipc;

 if (!sk)
  return 0;

 lock_sock(sk);

 ipc = qrtr_sk(sk);
 sk->sk_shutdown = SHUTDOWN_MASK;
 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_state_change(sk);

 sock_set_flag(sk, SOCK_DEAD);
 sock->sk = ((void*)0);

 if (!sock_flag(sk, SOCK_ZAPPED))
  qrtr_port_remove(ipc);

 skb_queue_purge(&sk->sk_receive_queue);

 release_sock(sk);
 sock_put(sk);

 return 0;
}
