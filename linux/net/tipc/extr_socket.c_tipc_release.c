
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int deferredq; } ;
struct tipc_sock {int rcu; scalar_t__ cong_link_cnt; int cong_links; TYPE_1__ mc_method; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_timer; int sk_shutdown; } ;


 int SHUTDOWN_MASK ;
 int TIPC_DUMP_ALL ;
 int TIPC_ERR_NO_PORT ;
 int __skb_queue_purge (int *) ;
 int __tipc_shutdown (struct socket*,int ) ;
 int call_rcu (int *,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_stop_timer (struct sock*,int *) ;
 int sock_orphan (struct sock*) ;
 int tipc_dest_list_purge (int *) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_callback ;
 int tipc_sk_leave (struct tipc_sock*) ;
 int tipc_sk_remove (struct tipc_sock*) ;
 int tipc_sk_withdraw (struct tipc_sock*,int ,int *) ;
 int trace_tipc_sk_release (struct sock*,int *,int ,char*) ;

__attribute__((used)) static int tipc_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct tipc_sock *tsk;





 if (sk == ((void*)0))
  return 0;

 tsk = tipc_sk(sk);
 lock_sock(sk);

 trace_tipc_sk_release(sk, ((void*)0), TIPC_DUMP_ALL, " ");
 __tipc_shutdown(sock, TIPC_ERR_NO_PORT);
 sk->sk_shutdown = SHUTDOWN_MASK;
 tipc_sk_leave(tsk);
 tipc_sk_withdraw(tsk, 0, ((void*)0));
 __skb_queue_purge(&tsk->mc_method.deferredq);
 sk_stop_timer(sk, &sk->sk_timer);
 tipc_sk_remove(tsk);

 sock_orphan(sk);

 release_sock(sk);
 tipc_dest_list_purge(&tsk->cong_links);
 tsk->cong_link_cnt = 0;
 call_rcu(&tsk->rcu, tipc_sk_callback);
 sock->sk = ((void*)0);

 return 0;
}
