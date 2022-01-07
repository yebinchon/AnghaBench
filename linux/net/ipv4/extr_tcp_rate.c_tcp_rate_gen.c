
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct TYPE_3__ {int sack_ok; } ;
struct tcp_sock {int delivered; int rate_interval_us; int rate_delivered; scalar_t__ rate_app_limited; TYPE_1__ rx_opt; int tcp_mstamp; int delivered_mstamp; scalar_t__ app_limited; } ;
struct sock {int dummy; } ;
struct rate_sample {int delivered; int interval_us; int prior_delivered; scalar_t__ is_app_limited; int is_retrans; void* rcv_interval_us; void* snd_interval_us; int prior_mstamp; void* losses; void* acked_sacked; } ;
struct TYPE_4__ {int icsk_ca_state; } ;


 scalar_t__ after (int,scalar_t__) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int max (void*,void*) ;
 int pr_debug (char*,int,int,int ,int ,int) ;
 int tcp_min_rtt (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 void* tcp_stamp_us_delta (int ,int ) ;
 scalar_t__ unlikely (int) ;

void tcp_rate_gen(struct sock *sk, u32 delivered, u32 lost,
    bool is_sack_reneg, struct rate_sample *rs)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 snd_us, ack_us;


 if (tp->app_limited && after(tp->delivered, tp->app_limited))
  tp->app_limited = 0;





 if (delivered)
  tp->delivered_mstamp = tp->tcp_mstamp;

 rs->acked_sacked = delivered;
 rs->losses = lost;





 if (!rs->prior_mstamp || is_sack_reneg) {
  rs->delivered = -1;
  rs->interval_us = -1;
  return;
 }
 rs->delivered = tp->delivered - rs->prior_delivered;






 snd_us = rs->interval_us;
 ack_us = tcp_stamp_us_delta(tp->tcp_mstamp,
        rs->prior_mstamp);
 rs->interval_us = max(snd_us, ack_us);


 rs->snd_interval_us = snd_us;
 rs->rcv_interval_us = ack_us;
 if (unlikely(rs->interval_us < tcp_min_rtt(tp))) {
  if (!rs->is_retrans)
   pr_debug("tcp rate: %ld %d %u %u %u\n",
     rs->interval_us, rs->delivered,
     inet_csk(sk)->icsk_ca_state,
     tp->rx_opt.sack_ok, tcp_min_rtt(tp));
  rs->interval_us = -1;
  return;
 }


 if (!rs->is_app_limited ||
     ((u64)rs->delivered * tp->rate_interval_us >=
      (u64)tp->rate_delivered * rs->interval_us)) {
  tp->rate_delivered = rs->delivered;
  tp->rate_interval_us = rs->interval_us;
  tp->rate_app_limited = rs->is_app_limited;
 }
}
