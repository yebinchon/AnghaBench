
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ is_sack_reneg; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_retransmits; } ;


 int DBGUNDO (struct sock*,char*) ;
 int LINUX_MIB_TCPLOSSUNDO ;
 int LINUX_MIB_TCPSPURIOUSRTOS ;
 int NET_INC_STATS (int ,int ) ;
 int TCP_CA_Open ;
 TYPE_1__* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;
 scalar_t__ tcp_is_sack (struct tcp_sock*) ;
 scalar_t__ tcp_may_undo (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_undo_cwnd_reduction (struct sock*,int) ;

__attribute__((used)) static bool tcp_try_undo_loss(struct sock *sk, bool frto_undo)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (frto_undo || tcp_may_undo(tp)) {
  tcp_undo_cwnd_reduction(sk, 1);

  DBGUNDO(sk, "partial loss");
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPLOSSUNDO);
  if (frto_undo)
   NET_INC_STATS(sock_net(sk),
     LINUX_MIB_TCPSPURIOUSRTOS);
  inet_csk(sk)->icsk_retransmits = 0;
  if (frto_undo || tcp_is_sack(tp)) {
   tcp_set_ca_state(sk, TCP_CA_Open);
   tp->is_sack_reneg = 0;
  }
  return 1;
 }
 return 0;
}
