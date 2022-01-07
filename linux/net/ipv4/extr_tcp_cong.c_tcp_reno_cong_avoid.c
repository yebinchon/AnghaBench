
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;


 int tcp_cong_avoid_ai (struct tcp_sock*,int ,int ) ;
 scalar_t__ tcp_in_slow_start (struct tcp_sock*) ;
 int tcp_is_cwnd_limited (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*,int ) ;

void tcp_reno_cong_avoid(struct sock *sk, u32 ack, u32 acked)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (!tcp_is_cwnd_limited(sk))
  return;


 if (tcp_in_slow_start(tp)) {
  acked = tcp_slow_start(tp, acked);
  if (!acked)
   return;
 }

 tcp_cong_avoid_ai(tp, tp->snd_cwnd, acked);
}
