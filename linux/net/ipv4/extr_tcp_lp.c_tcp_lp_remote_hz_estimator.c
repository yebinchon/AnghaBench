
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ rcv_tsval; scalar_t__ rcv_tsecr; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct lp {int remote_hz; scalar_t__ remote_ref_time; scalar_t__ local_ref_time; int flag; } ;
typedef int s64 ;


 int LP_VALID_RHZ ;
 int TCP_TS_HZ ;
 struct lp* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 tcp_lp_remote_hz_estimator(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct lp *lp = inet_csk_ca(sk);
 s64 rhz = lp->remote_hz << 6;
 s64 m = 0;



 if (lp->remote_ref_time == 0 || lp->local_ref_time == 0)
  goto out;


 if (tp->rx_opt.rcv_tsval == lp->remote_ref_time ||
     tp->rx_opt.rcv_tsecr == lp->local_ref_time)
  goto out;

 m = TCP_TS_HZ *
     (tp->rx_opt.rcv_tsval - lp->remote_ref_time) /
     (tp->rx_opt.rcv_tsecr - lp->local_ref_time);
 if (m < 0)
  m = -m;

 if (rhz > 0) {
  m -= rhz >> 6;
  rhz += m;
 } else
  rhz = m << 6;

 out:

 if ((rhz >> 6) > 0)
  lp->flag |= LP_VALID_RHZ;
 else
  lp->flag &= ~LP_VALID_RHZ;


 lp->remote_ref_time = tp->rx_opt.rcv_tsval;
 lp->local_ref_time = tp->rx_opt.rcv_tsecr;

 return rhz >> 6;
}
