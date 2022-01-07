
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long u32 ;
struct TYPE_3__ {long rcv_tsecr; scalar_t__ saw_tstamp; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct rate_sample {long rtt_us; } ;
struct TYPE_4__ {scalar_t__ icsk_backoff; } ;


 int const FLAG_ACKED ;
 long INT_MAX ;
 long TCP_TS_HZ ;
 long USEC_PER_SEC ;
 TYPE_2__* inet_csk (struct sock*) ;
 scalar_t__ likely (int) ;
 int tcp_rtt_estimator (struct sock*,long) ;
 int tcp_set_rto (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 long tcp_time_stamp (struct tcp_sock const*) ;
 int tcp_update_rtt_min (struct sock*,long,int const) ;

__attribute__((used)) static bool tcp_ack_update_rtt(struct sock *sk, const int flag,
          long seq_rtt_us, long sack_rtt_us,
          long ca_rtt_us, struct rate_sample *rs)
{
 const struct tcp_sock *tp = tcp_sk(sk);






 if (seq_rtt_us < 0)
  seq_rtt_us = sack_rtt_us;







 if (seq_rtt_us < 0 && tp->rx_opt.saw_tstamp && tp->rx_opt.rcv_tsecr &&
     flag & FLAG_ACKED) {
  u32 delta = tcp_time_stamp(tp) - tp->rx_opt.rcv_tsecr;

  if (likely(delta < INT_MAX / (USEC_PER_SEC / TCP_TS_HZ))) {
   seq_rtt_us = delta * (USEC_PER_SEC / TCP_TS_HZ);
   ca_rtt_us = seq_rtt_us;
  }
 }
 rs->rtt_us = ca_rtt_us;
 if (seq_rtt_us < 0)
  return 0;





 tcp_update_rtt_min(sk, ca_rtt_us, flag);
 tcp_rtt_estimator(sk, seq_rtt_us);
 tcp_set_rto(sk);


 inet_csk(sk)->icsk_backoff = 0;
 return 1;
}
