
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {scalar_t__ syn_data_acked; scalar_t__ syn_data; scalar_t__ syn_fastopen; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_retransmits; } ;


 int LINUX_MIB_TCPFASTOPENACTIVEFAIL ;
 int NET_INC_STATS (int ,int ) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int sock_net (struct sock*) ;
 int tcp_fastopen_active_disable (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_fastopen_active_detect_blackhole(struct sock *sk, bool expired)
{
 u32 timeouts = inet_csk(sk)->icsk_retransmits;
 struct tcp_sock *tp = tcp_sk(sk);






 if ((tp->syn_fastopen || tp->syn_data || tp->syn_data_acked) &&
     (timeouts == 2 || (timeouts < 2 && expired))) {
  tcp_fastopen_active_disable(sk);
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPFASTOPENACTIVEFAIL);
 }
}
