
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int advanced; scalar_t__ end_seq; int mstamp; scalar_t__ rtt_us; } ;
struct tcp_sock {TYPE_1__ rack; int tcp_mstamp; } ;


 int TCPCB_RETRANS ;
 scalar_t__ tcp_min_rtt (struct tcp_sock*) ;
 scalar_t__ tcp_rack_sent_after (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ tcp_stamp_us_delta (int ,int ) ;

void tcp_rack_advance(struct tcp_sock *tp, u8 sacked, u32 end_seq,
        u64 xmit_time)
{
 u32 rtt_us;

 rtt_us = tcp_stamp_us_delta(tp->tcp_mstamp, xmit_time);
 if (rtt_us < tcp_min_rtt(tp) && (sacked & TCPCB_RETRANS)) {
  return;
 }
 tp->rack.advanced = 1;
 tp->rack.rtt_us = rtt_us;
 if (tcp_rack_sent_after(xmit_time, tp->rack.mstamp,
    end_seq, tp->rack.end_seq)) {
  tp->rack.mstamp = xmit_time;
  tp->rack.end_seq = end_seq;
 }
}
