
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ reo_wnd_persist; } ;
struct tcp_sock {scalar_t__ snd_una; scalar_t__ high_seq; scalar_t__ is_sack_reneg; scalar_t__ retrans_stamp; TYPE_1__ rack; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_ca_state; } ;


 int DBGUNDO (struct sock*,char*) ;
 int LINUX_MIB_TCPFULLUNDO ;
 int LINUX_MIB_TCPLOSSUNDO ;
 int NET_INC_STATS (int ,int) ;
 scalar_t__ TCP_CA_Loss ;
 int TCP_CA_Open ;
 TYPE_2__* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;
 int tcp_any_retrans_done (struct sock*) ;
 scalar_t__ tcp_is_reno (struct tcp_sock*) ;
 scalar_t__ tcp_may_undo (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_undo_cwnd_reduction (struct sock*,int) ;

__attribute__((used)) static bool tcp_try_undo_recovery(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tcp_may_undo(tp)) {
  int mib_idx;




  DBGUNDO(sk, inet_csk(sk)->icsk_ca_state == TCP_CA_Loss ? "loss" : "retrans");
  tcp_undo_cwnd_reduction(sk, 0);
  if (inet_csk(sk)->icsk_ca_state == TCP_CA_Loss)
   mib_idx = LINUX_MIB_TCPLOSSUNDO;
  else
   mib_idx = LINUX_MIB_TCPFULLUNDO;

  NET_INC_STATS(sock_net(sk), mib_idx);
 } else if (tp->rack.reo_wnd_persist) {
  tp->rack.reo_wnd_persist--;
 }
 if (tp->snd_una == tp->high_seq && tcp_is_reno(tp)) {



  if (!tcp_any_retrans_done(sk))
   tp->retrans_stamp = 0;
  return 1;
 }
 tcp_set_ca_state(sk, TCP_CA_Open);
 tp->is_sack_reneg = 0;
 return 0;
}
