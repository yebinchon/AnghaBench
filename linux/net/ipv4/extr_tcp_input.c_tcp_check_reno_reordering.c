
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcp_sock {int reord_seen; scalar_t__ packets_out; int reordering; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int sysctl_tcp_max_reordering; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;


 int LINUX_MIB_TCPRENOREORDER ;
 int NET_INC_STATS (TYPE_2__*,int ) ;
 int min_t (int ,scalar_t__,int ) ;
 TYPE_2__* sock_net (struct sock*) ;
 int tcp_limit_reno_sacked (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int u32 ;

__attribute__((used)) static void tcp_check_reno_reordering(struct sock *sk, const int addend)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (!tcp_limit_reno_sacked(tp))
  return;

 tp->reordering = min_t(u32, tp->packets_out + addend,
          sock_net(sk)->ipv4.sysctl_tcp_max_reordering);
 tp->reord_seen++;
 NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPRENOREORDER);
}
