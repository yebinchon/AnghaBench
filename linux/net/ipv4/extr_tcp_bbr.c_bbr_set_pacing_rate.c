
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {scalar_t__ srtt_us; } ;
struct sock {unsigned long sk_pacing_rate; } ;
struct bbr {int has_seen_rtt; } ;


 unsigned long bbr_bw_to_pacing_rate (struct sock*,int ,int) ;
 scalar_t__ bbr_full_bw_reached (struct sock*) ;
 int bbr_init_pacing_rate_from_rtt (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void bbr_set_pacing_rate(struct sock *sk, u32 bw, int gain)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct bbr *bbr = inet_csk_ca(sk);
 unsigned long rate = bbr_bw_to_pacing_rate(sk, bw, gain);

 if (unlikely(!bbr->has_seen_rtt && tp->srtt_us))
  bbr_init_pacing_rate_from_rtt(sk);
 if (bbr_full_bw_reached(sk) || rate > sk->sk_pacing_rate)
  sk->sk_pacing_rate = rate;
}
