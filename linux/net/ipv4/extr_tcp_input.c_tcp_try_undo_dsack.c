
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reo_wnd_persist; } ;
struct tcp_sock {TYPE_1__ rack; int undo_retrans; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;


 int DBGUNDO (struct sock*,char*) ;
 int LINUX_MIB_TCPDSACKUNDO ;
 int NET_INC_STATS (int ,int ) ;
 int TCP_RACK_RECOVERY_THRESH ;
 scalar_t__ min (int ,scalar_t__) ;
 int sock_net (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_undo_cwnd_reduction (struct sock*,int) ;

__attribute__((used)) static bool tcp_try_undo_dsack(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tp->undo_marker && !tp->undo_retrans) {
  tp->rack.reo_wnd_persist = min(TCP_RACK_RECOVERY_THRESH,
            tp->rack.reo_wnd_persist + 1);
  DBGUNDO(sk, "D-SACK");
  tcp_undo_cwnd_reduction(sk, 0);
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPDSACKUNDO);
  return 1;
 }
 return 0;
}
