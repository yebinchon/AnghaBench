
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd_cnt; int snd_cwnd; scalar_t__ snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct illinois {int acked; int alpha; int end_seq; } ;


 int ALPHA_SHIFT ;
 scalar_t__ after (int,int ) ;
 struct illinois* inet_csk_ca (struct sock*) ;
 int min (int,int) ;
 scalar_t__ tcp_in_slow_start (struct tcp_sock*) ;
 int tcp_is_cwnd_limited (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*,int) ;
 int update_params (struct sock*) ;

__attribute__((used)) static void tcp_illinois_cong_avoid(struct sock *sk, u32 ack, u32 acked)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct illinois *ca = inet_csk_ca(sk);

 if (after(ack, ca->end_seq))
  update_params(sk);


 if (!tcp_is_cwnd_limited(sk))
  return;


 if (tcp_in_slow_start(tp))
  tcp_slow_start(tp, acked);

 else {
  u32 delta;


  tp->snd_cwnd_cnt += ca->acked;
  ca->acked = 1;




  delta = (tp->snd_cwnd_cnt * ca->alpha) >> ALPHA_SHIFT;
  if (delta >= tp->snd_cwnd) {
   tp->snd_cwnd = min(tp->snd_cwnd + delta / tp->snd_cwnd,
        (u32)tp->snd_cwnd_clamp);
   tp->snd_cwnd_cnt = 0;
  }
 }
}
