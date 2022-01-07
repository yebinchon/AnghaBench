
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ undo_marker; scalar_t__ prior_ssthresh; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;


 scalar_t__ TCP_CA_CWR ;
 TYPE_1__* inet_csk (struct sock*) ;
 int tcp_init_cwnd_reduction (struct sock*) ;
 int tcp_set_ca_state (struct sock*,scalar_t__) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_enter_cwr(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 tp->prior_ssthresh = 0;
 if (inet_csk(sk)->icsk_ca_state < TCP_CA_CWR) {
  tp->undo_marker = 0;
  tcp_init_cwnd_reduction(sk);
  tcp_set_ca_state(sk, TCP_CA_CWR);
 }
}
