
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct lp {int flag; int owd_min; int owd_max; int owd_max_rsv; int sowd; } ;
typedef int s64 ;


 int LP_VALID_OWD ;
 int LP_VALID_RHZ ;
 struct lp* inet_csk_ca (struct sock*) ;
 int tcp_lp_owd_calculator (struct sock*) ;

__attribute__((used)) static void tcp_lp_rtt_sample(struct sock *sk, u32 rtt)
{
 struct lp *lp = inet_csk_ca(sk);
 s64 mowd = tcp_lp_owd_calculator(sk);


 if (!(lp->flag & LP_VALID_RHZ) || !(lp->flag & LP_VALID_OWD))
  return;


 if (mowd < lp->owd_min)
  lp->owd_min = mowd;



 if (mowd > lp->owd_max) {
  if (mowd > lp->owd_max_rsv) {
   if (lp->owd_max_rsv == 0)
    lp->owd_max = mowd;
   else
    lp->owd_max = lp->owd_max_rsv;
   lp->owd_max_rsv = mowd;
  } else
   lp->owd_max = mowd;
 }


 if (lp->sowd != 0) {
  mowd -= lp->sowd >> 3;
  lp->sowd += mowd;
 } else
  lp->sowd = mowd << 3;
}
