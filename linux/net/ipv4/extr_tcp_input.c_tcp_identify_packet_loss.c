
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ retrans_out; } ;
struct sock {int dummy; } ;


 int FLAG_LOST_RETRANS ;
 int FLAG_SND_UNA_ADVANCED ;
 scalar_t__ tcp_is_rack (struct sock*) ;
 int tcp_is_reno (struct tcp_sock*) ;
 int tcp_newreno_mark_lost (struct sock*,int) ;
 int tcp_rack_mark_lost (struct sock*) ;
 scalar_t__ tcp_rtx_queue_empty (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void tcp_identify_packet_loss(struct sock *sk, int *ack_flag)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tcp_rtx_queue_empty(sk))
  return;

 if (unlikely(tcp_is_reno(tp))) {
  tcp_newreno_mark_lost(sk, *ack_flag & FLAG_SND_UNA_ADVANCED);
 } else if (tcp_is_rack(sk)) {
  u32 prior_retrans = tp->retrans_out;

  tcp_rack_mark_lost(sk);
  if (prior_retrans > tp->retrans_out)
   *ack_flag |= FLAG_LOST_RETRANS;
 }
}
