
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ prior_ssthresh; } ;
struct sock {int dummy; } ;


 int LINUX_MIB_TCPRENORECOVERY ;
 int LINUX_MIB_TCPSACKRECOVERY ;
 int NET_INC_STATS (int ,int) ;
 int TCP_CA_Recovery ;
 int sock_net (struct sock*) ;
 scalar_t__ tcp_current_ssthresh (struct sock*) ;
 int tcp_in_cwnd_reduction (struct sock*) ;
 int tcp_init_cwnd_reduction (struct sock*) ;
 int tcp_init_undo (struct tcp_sock*) ;
 scalar_t__ tcp_is_reno (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_enter_recovery(struct sock *sk, bool ece_ack)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int mib_idx;

 if (tcp_is_reno(tp))
  mib_idx = LINUX_MIB_TCPRENORECOVERY;
 else
  mib_idx = LINUX_MIB_TCPSACKRECOVERY;

 NET_INC_STATS(sock_net(sk), mib_idx);

 tp->prior_ssthresh = 0;
 tcp_init_undo(tp);

 if (!tcp_in_cwnd_reduction(sk)) {
  if (!ece_ack)
   tp->prior_ssthresh = tcp_current_ssthresh(sk);
  tcp_init_cwnd_reduction(sk);
 }
 tcp_set_ca_state(sk, TCP_CA_Recovery);
}
