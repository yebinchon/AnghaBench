
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int srtt_us; int mdev_us; int mdev_max_us; int rttvar_us; int snd_nxt; int rtt_seq; int snd_una; } ;
struct sock {int dummy; } ;


 scalar_t__ after (int ,int ) ;
 void* max (unsigned int,int) ;
 int tcp_bpf_rtt (struct sock*) ;
 int tcp_rto_min_us (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_rtt_estimator(struct sock *sk, long mrtt_us)
{
 struct tcp_sock *tp = tcp_sk(sk);
 long m = mrtt_us;
 u32 srtt = tp->srtt_us;
 if (srtt != 0) {
  m -= (srtt >> 3);
  srtt += m;
  if (m < 0) {
   m = -m;
   m -= (tp->mdev_us >> 2);
   if (m > 0)
    m >>= 3;
  } else {
   m -= (tp->mdev_us >> 2);
  }
  tp->mdev_us += m;
  if (tp->mdev_us > tp->mdev_max_us) {
   tp->mdev_max_us = tp->mdev_us;
   if (tp->mdev_max_us > tp->rttvar_us)
    tp->rttvar_us = tp->mdev_max_us;
  }
  if (after(tp->snd_una, tp->rtt_seq)) {
   if (tp->mdev_max_us < tp->rttvar_us)
    tp->rttvar_us -= (tp->rttvar_us - tp->mdev_max_us) >> 2;
   tp->rtt_seq = tp->snd_nxt;
   tp->mdev_max_us = tcp_rto_min_us(sk);

   tcp_bpf_rtt(sk);
  }
 } else {

  srtt = m << 3;
  tp->mdev_us = m << 1;
  tp->rttvar_us = max(tp->mdev_us, tcp_rto_min_us(sk));
  tp->mdev_max_us = tp->rttvar_us;
  tp->rtt_seq = tp->snd_nxt;

  tcp_bpf_rtt(sk);
 }
 tp->srtt_us = max(1U, srtt);
}
