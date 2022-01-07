
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {int cong_link_cnt; int group_is_open; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; int sk_state; int sk_receive_queue; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDHUP ;
 int EPOLLRDNORM ;
 int RCV_SHUTDOWN ;
 int SHUTDOWN_MASK ;


 int TIPC_DUMP_ALL ;



 int skb_queue_empty_lockless (int *) ;
 int sock_poll_wait (struct file*,struct socket*,int *) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_type_connectionless (struct sock*) ;
 int trace_tipc_sk_poll (struct sock*,int *,int ,char*) ;
 int tsk_conn_cong (struct tipc_sock*) ;

__attribute__((used)) static __poll_t tipc_poll(struct file *file, struct socket *sock,
         poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct tipc_sock *tsk = tipc_sk(sk);
 __poll_t revents = 0;

 sock_poll_wait(file, sock, wait);
 trace_tipc_sk_poll(sk, ((void*)0), TIPC_DUMP_ALL, " ");

 if (sk->sk_shutdown & RCV_SHUTDOWN)
  revents |= EPOLLRDHUP | EPOLLIN | EPOLLRDNORM;
 if (sk->sk_shutdown == SHUTDOWN_MASK)
  revents |= EPOLLHUP;

 switch (sk->sk_state) {
 case 130:
  if (!tsk->cong_link_cnt && !tsk_conn_cong(tsk))
   revents |= EPOLLOUT;

 case 129:
 case 132:
  if (!skb_queue_empty_lockless(&sk->sk_receive_queue))
   revents |= EPOLLIN | EPOLLRDNORM;
  break;
 case 128:
  if (tsk->group_is_open && !tsk->cong_link_cnt)
   revents |= EPOLLOUT;
  if (!tipc_sk_type_connectionless(sk))
   break;
  if (skb_queue_empty_lockless(&sk->sk_receive_queue))
   break;
  revents |= EPOLLIN | EPOLLRDNORM;
  break;
 case 131:
  revents = EPOLLIN | EPOLLRDNORM | EPOLLHUP;
  break;
 }
 return revents;
}
