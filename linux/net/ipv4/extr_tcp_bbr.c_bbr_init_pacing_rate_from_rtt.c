
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tcp_sock {int srtt_us; scalar_t__ snd_cwnd; } ;
struct sock {int sk_pacing_rate; } ;
struct bbr {int has_seen_rtt; } ;


 int BW_UNIT ;
 int USEC_PER_MSEC ;
 int bbr_bw_to_pacing_rate (struct sock*,int,int ) ;
 int bbr_high_gain ;
 int do_div (int,int ) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 int max (int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void bbr_init_pacing_rate_from_rtt(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 u64 bw;
 u32 rtt_us;

 if (tp->srtt_us) {
  rtt_us = max(tp->srtt_us >> 3, 1U);
  bbr->has_seen_rtt = 1;
 } else {
  rtt_us = USEC_PER_MSEC;
 }
 bw = (u64)tp->snd_cwnd * BW_UNIT;
 do_div(bw, rtt_us);
 sk->sk_pacing_rate = bbr_bw_to_pacing_rate(sk, bw, bbr_high_gain);
}
