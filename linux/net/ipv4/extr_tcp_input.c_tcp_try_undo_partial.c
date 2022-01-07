
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {scalar_t__ retrans_stamp; scalar_t__ retrans_out; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;


 int DBGUNDO (struct sock*,char*) ;
 int LINUX_MIB_TCPPARTIALUNDO ;
 int NET_INC_STATS (int ,int ) ;
 int sock_net (struct sock*) ;
 int tcp_any_retrans_done (struct sock*) ;
 int tcp_check_sack_reordering (struct sock*,int ,int) ;
 scalar_t__ tcp_packet_delayed (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_try_keep_open (struct sock*) ;
 int tcp_undo_cwnd_reduction (struct sock*,int) ;

__attribute__((used)) static bool tcp_try_undo_partial(struct sock *sk, u32 prior_snd_una)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tp->undo_marker && tcp_packet_delayed(tp)) {



  tcp_check_sack_reordering(sk, prior_snd_una, 1);






  if (tp->retrans_out)
   return 1;

  if (!tcp_any_retrans_done(sk))
   tp->retrans_stamp = 0;

  DBGUNDO(sk, "partial recovery");
  tcp_undo_cwnd_reduction(sk, 1);
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPPARTIALUNDO);
  tcp_try_keep_open(sk);
  return 1;
 }
 return 0;
}
