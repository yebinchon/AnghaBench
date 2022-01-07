
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; } ;
struct sock {int dummy; } ;
struct bictcp {int delay_min; scalar_t__ epoch_start; } ;
struct ack_sample {int rtt_us; } ;
typedef scalar_t__ s32 ;


 scalar_t__ HZ ;
 int USEC_PER_MSEC ;
 scalar_t__ hystart ;
 scalar_t__ hystart_low_window ;
 int hystart_update (struct sock*,int) ;
 struct bictcp* inet_csk_ca (struct sock*) ;
 scalar_t__ tcp_in_slow_start (struct tcp_sock const*) ;
 scalar_t__ tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bictcp_acked(struct sock *sk, const struct ack_sample *sample)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct bictcp *ca = inet_csk_ca(sk);
 u32 delay;


 if (sample->rtt_us < 0)
  return;


 if (ca->epoch_start && (s32)(tcp_jiffies32 - ca->epoch_start) < HZ)
  return;

 delay = (sample->rtt_us << 3) / USEC_PER_MSEC;
 if (delay == 0)
  delay = 1;


 if (ca->delay_min == 0 || ca->delay_min > delay)
  ca->delay_min = delay;


 if (hystart && tcp_in_slow_start(tp) &&
     tp->snd_cwnd >= hystart_low_window)
  hystart_update(sk, delay);
}
