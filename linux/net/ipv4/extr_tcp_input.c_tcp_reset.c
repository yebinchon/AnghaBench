
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int (* sk_error_report ) (struct sock*) ;int sk_err; } ;


 int ECONNREFUSED ;
 int ECONNRESET ;
 int EPIPE ;
 int SOCK_DEAD ;



 int smp_wmb () ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_write_queue_purge (struct sock*) ;
 int trace_tcp_receive_reset (struct sock*) ;

void tcp_reset(struct sock *sk)
{
 trace_tcp_receive_reset(sk);


 switch (sk->sk_state) {
 case 128:
  sk->sk_err = ECONNREFUSED;
  break;
 case 129:
  sk->sk_err = EPIPE;
  break;
 case 130:
  return;
 default:
  sk->sk_err = ECONNRESET;
 }

 smp_wmb();

 tcp_write_queue_purge(sk);
 tcp_done(sk);

 if (!sock_flag(sk, SOCK_DEAD))
  sk->sk_error_report(sk);
}
