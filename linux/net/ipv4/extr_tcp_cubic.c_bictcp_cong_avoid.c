
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct bictcp {int cnt; int end_seq; } ;


 scalar_t__ after (int ,int ) ;
 int bictcp_hystart_reset (struct sock*) ;
 int bictcp_update (struct bictcp*,int ,int ) ;
 scalar_t__ hystart ;
 struct bictcp* inet_csk_ca (struct sock*) ;
 int tcp_cong_avoid_ai (struct tcp_sock*,int ,int ) ;
 scalar_t__ tcp_in_slow_start (struct tcp_sock*) ;
 int tcp_is_cwnd_limited (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*,int ) ;

__attribute__((used)) static void bictcp_cong_avoid(struct sock *sk, u32 ack, u32 acked)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bictcp *ca = inet_csk_ca(sk);

 if (!tcp_is_cwnd_limited(sk))
  return;

 if (tcp_in_slow_start(tp)) {
  if (hystart && after(ack, ca->end_seq))
   bictcp_hystart_reset(sk);
  acked = tcp_slow_start(tp, acked);
  if (!acked)
   return;
 }
 bictcp_update(ca, tp->snd_cwnd, acked);
 tcp_cong_avoid_ai(tp, ca->cnt, acked);
}
