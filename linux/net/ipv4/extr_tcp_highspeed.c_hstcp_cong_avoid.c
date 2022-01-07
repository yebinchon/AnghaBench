
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ snd_cwnd_clamp; scalar_t__ snd_cwnd_cnt; } ;
struct sock {int dummy; } ;
struct hstcp {size_t ai; } ;
struct TYPE_2__ {scalar_t__ cwnd; } ;


 int HSTCP_AIMD_MAX ;
 TYPE_1__* hstcp_aimd_vals ;
 struct hstcp* inet_csk_ca (struct sock*) ;
 scalar_t__ tcp_in_slow_start (struct tcp_sock*) ;
 int tcp_is_cwnd_limited (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*,int ) ;

__attribute__((used)) static void hstcp_cong_avoid(struct sock *sk, u32 ack, u32 acked)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct hstcp *ca = inet_csk_ca(sk);

 if (!tcp_is_cwnd_limited(sk))
  return;

 if (tcp_in_slow_start(tp))
  tcp_slow_start(tp, acked);
 else {







  if (tp->snd_cwnd > hstcp_aimd_vals[ca->ai].cwnd) {
   while (tp->snd_cwnd > hstcp_aimd_vals[ca->ai].cwnd &&
          ca->ai < HSTCP_AIMD_MAX - 1)
    ca->ai++;
  } else if (ca->ai && tp->snd_cwnd <= hstcp_aimd_vals[ca->ai-1].cwnd) {
   while (ca->ai && tp->snd_cwnd <= hstcp_aimd_vals[ca->ai-1].cwnd)
    ca->ai--;
  }


  if (tp->snd_cwnd < tp->snd_cwnd_clamp) {

   tp->snd_cwnd_cnt += ca->ai + 1;
   if (tp->snd_cwnd_cnt >= tp->snd_cwnd) {
    tp->snd_cwnd_cnt -= tp->snd_cwnd;
    tp->snd_cwnd++;
   }
  }
 }
}
