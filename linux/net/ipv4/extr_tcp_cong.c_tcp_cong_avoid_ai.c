
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd_cnt; int snd_cwnd_clamp; scalar_t__ snd_cwnd; } ;


 scalar_t__ min (scalar_t__,int ) ;

void tcp_cong_avoid_ai(struct tcp_sock *tp, u32 w, u32 acked)
{

 if (tp->snd_cwnd_cnt >= w) {
  tp->snd_cwnd_cnt = 0;
  tp->snd_cwnd++;
 }

 tp->snd_cwnd_cnt += acked;
 if (tp->snd_cwnd_cnt >= w) {
  u32 delta = tp->snd_cwnd_cnt / w;

  tp->snd_cwnd_cnt -= delta * w;
  tp->snd_cwnd += delta;
 }
 tp->snd_cwnd = min(tp->snd_cwnd, tp->snd_cwnd_clamp);
}
