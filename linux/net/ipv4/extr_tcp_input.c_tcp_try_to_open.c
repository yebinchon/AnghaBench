
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ retrans_stamp; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;


 int FLAG_ECE ;
 scalar_t__ TCP_CA_CWR ;
 TYPE_1__* inet_csk (struct sock*) ;
 int tcp_any_retrans_done (struct sock*) ;
 int tcp_enter_cwr (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_try_keep_open (struct sock*) ;
 int tcp_verify_left_out (struct tcp_sock*) ;

__attribute__((used)) static void tcp_try_to_open(struct sock *sk, int flag)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tcp_verify_left_out(tp);

 if (!tcp_any_retrans_done(sk))
  tp->retrans_stamp = 0;

 if (flag & FLAG_ECE)
  tcp_enter_cwr(sk);

 if (inet_csk(sk)->icsk_ca_state != TCP_CA_CWR) {
  tcp_try_keep_open(sk);
 }
}
