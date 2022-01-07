
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rcv_tsecr; } ;
struct tcp_sock {unsigned int snd_cwnd; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct lp {int inference; int last_drop; int flag; int sowd; int owd_min; int owd_max; int owd_max_rsv; int remote_hz; } ;
struct ack_sample {scalar_t__ rtt_us; } ;
typedef scalar_t__ s32 ;


 int LP_WITHIN_INF ;
 int LP_WITHIN_THR ;
 struct lp* inet_csk_ca (struct sock*) ;
 unsigned int max (unsigned int,unsigned int) ;
 int pr_debug (char*,int,unsigned int,int ,int,int,int) ;
 int tcp_lp_rtt_sample (struct sock*,scalar_t__) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp (struct tcp_sock*) ;

__attribute__((used)) static void tcp_lp_pkts_acked(struct sock *sk, const struct ack_sample *sample)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct lp *lp = inet_csk_ca(sk);
 u32 now = tcp_time_stamp(tp);
 u32 delta;

 if (sample->rtt_us > 0)
  tcp_lp_rtt_sample(sk, sample->rtt_us);


 delta = now - tp->rx_opt.rcv_tsecr;
 if ((s32)delta > 0)
  lp->inference = 3 * delta;


 if (lp->last_drop && (now - lp->last_drop < lp->inference))
  lp->flag |= LP_WITHIN_INF;
 else
  lp->flag &= ~LP_WITHIN_INF;


 if (lp->sowd >> 3 <
     lp->owd_min + 15 * (lp->owd_max - lp->owd_min) / 100)
  lp->flag |= LP_WITHIN_THR;
 else
  lp->flag &= ~LP_WITHIN_THR;

 pr_debug("TCP-LP: %05o|%5u|%5u|%15u|%15u|%15u\n", lp->flag,
   tp->snd_cwnd, lp->remote_hz, lp->owd_min, lp->owd_max,
   lp->sowd >> 3);

 if (lp->flag & LP_WITHIN_THR)
  return;




 lp->owd_min = lp->sowd >> 3;
 lp->owd_max = lp->sowd >> 2;
 lp->owd_max_rsv = lp->sowd >> 2;



 if (lp->flag & LP_WITHIN_INF)
  tp->snd_cwnd = 1U;



 else
  tp->snd_cwnd = max(tp->snd_cwnd >> 1U, 1U);


 lp->last_drop = now;
}
