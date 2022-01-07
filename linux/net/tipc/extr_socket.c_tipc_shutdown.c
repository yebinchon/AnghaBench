
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;int sk_receive_queue; int sk_shutdown; } ;


 int EINVAL ;
 int ENOTCONN ;
 int SEND_SHUTDOWN ;
 int SHUT_RDWR ;
 int TIPC_CONN_SHUTDOWN ;
 scalar_t__ TIPC_DISCONNECTING ;
 int TIPC_DUMP_ALL ;
 int __skb_queue_purge (int *) ;
 int __tipc_shutdown (struct socket*,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*) ;
 int trace_tipc_sk_shutdown (struct sock*,int *,int ,char*) ;

__attribute__((used)) static int tipc_shutdown(struct socket *sock, int how)
{
 struct sock *sk = sock->sk;
 int res;

 if (how != SHUT_RDWR)
  return -EINVAL;

 lock_sock(sk);

 trace_tipc_sk_shutdown(sk, ((void*)0), TIPC_DUMP_ALL, " ");
 __tipc_shutdown(sock, TIPC_CONN_SHUTDOWN);
 sk->sk_shutdown = SEND_SHUTDOWN;

 if (sk->sk_state == TIPC_DISCONNECTING) {

  __skb_queue_purge(&sk->sk_receive_queue);


  sk->sk_state_change(sk);
  res = 0;
 } else {
  res = -ENOTCONN;
 }

 release_sock(sk);
 return res;
}
