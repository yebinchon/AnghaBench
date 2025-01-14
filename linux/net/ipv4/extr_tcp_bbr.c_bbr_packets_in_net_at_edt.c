
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tcp_sock {int tcp_clock_cache; int tcp_wstamp_ns; } ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ pacing_gain; } ;


 scalar_t__ BBR_UNIT ;
 int BW_SCALE ;
 int NSEC_PER_USEC ;
 scalar_t__ bbr_bw (struct sock*) ;
 scalar_t__ bbr_tso_segs_goal (struct sock*) ;
 int div_u64 (int,int ) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int max (int ,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 bbr_packets_in_net_at_edt(struct sock *sk, u32 inflight_now)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 u64 now_ns, edt_ns, interval_us;
 u32 interval_delivered, inflight_at_edt;

 now_ns = tp->tcp_clock_cache;
 edt_ns = max(tp->tcp_wstamp_ns, now_ns);
 interval_us = div_u64(edt_ns - now_ns, NSEC_PER_USEC);
 interval_delivered = (u64)bbr_bw(sk) * interval_us >> BW_SCALE;
 inflight_at_edt = inflight_now;
 if (bbr->pacing_gain > BBR_UNIT)
  inflight_at_edt += bbr_tso_segs_goal(sk);
 if (interval_delivered >= inflight_at_edt)
  return 0;
 return inflight_at_edt - interval_delivered;
}
