
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct illinois {scalar_t__ base_rtt; scalar_t__ max_rtt; int sum_rtt; int cnt_rtt; int acked; } ;
struct ack_sample {scalar_t__ rtt_us; int pkts_acked; } ;
typedef scalar_t__ s32 ;


 scalar_t__ RTT_MAX ;
 struct illinois* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void tcp_illinois_acked(struct sock *sk, const struct ack_sample *sample)
{
 struct illinois *ca = inet_csk_ca(sk);
 s32 rtt_us = sample->rtt_us;

 ca->acked = sample->pkts_acked;


 if (rtt_us < 0)
  return;


 if (rtt_us > RTT_MAX)
  rtt_us = RTT_MAX;


 if (ca->base_rtt > rtt_us)
  ca->base_rtt = rtt_us;


 if (ca->max_rtt < rtt_us)
  ca->max_rtt = rtt_us;

 ++ca->cnt_rtt;
 ca->sum_rtt += rtt_us;
}
