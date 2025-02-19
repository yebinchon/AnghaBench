
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {int fastopen_rsk; } ;


 int SHUTDOWN_MASK ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int TCP_INC_STATS (int ,int ) ;
 int TCP_MIB_ATTEMPTFAILS ;
 scalar_t__ TCP_SYN_RECV ;
 scalar_t__ TCP_SYN_SENT ;
 int inet_csk_destroy_sock (struct sock*) ;
 struct request_sock* rcu_dereference_protected (int ,int) ;
 int reqsk_fastopen_remove (struct sock*,struct request_sock*,int) ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int tcp_clear_xmit_timers (struct sock*) ;
 int tcp_set_state (struct sock*,int ) ;
 TYPE_1__* tcp_sk (struct sock*) ;

void tcp_done(struct sock *sk)
{
 struct request_sock *req;





 req = rcu_dereference_protected(tcp_sk(sk)->fastopen_rsk, 1);

 if (sk->sk_state == TCP_SYN_SENT || sk->sk_state == TCP_SYN_RECV)
  TCP_INC_STATS(sock_net(sk), TCP_MIB_ATTEMPTFAILS);

 tcp_set_state(sk, TCP_CLOSE);
 tcp_clear_xmit_timers(sk);
 if (req)
  reqsk_fastopen_remove(sk, req, 0);

 sk->sk_shutdown = SHUTDOWN_MASK;

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_state_change(sk);
 else
  inet_csk_destroy_sock(sk);
}
