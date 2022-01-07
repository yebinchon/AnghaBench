
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int delivered_ce; int delivered; int snd_una; } ;
struct sock {int dummy; } ;
struct dctcp {int old_delivered_ce; int dctcp_alpha; int old_delivered; int next_seq; } ;


 int DCTCP_MAX_ALPHA ;
 int WRITE_ONCE (int,int) ;
 int before (int ,int ) ;
 int dctcp_reset (struct tcp_sock const*,struct dctcp*) ;
 int dctcp_shift_g ;
 struct dctcp* inet_csk_ca (struct sock*) ;
 int max (unsigned int,int) ;
 int min (int,int ) ;
 scalar_t__ min_not_zero (int,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void dctcp_update_alpha(struct sock *sk, u32 flags)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct dctcp *ca = inet_csk_ca(sk);


 if (!before(tp->snd_una, ca->next_seq)) {
  u32 delivered_ce = tp->delivered_ce - ca->old_delivered_ce;
  u32 alpha = ca->dctcp_alpha;



  alpha -= min_not_zero(alpha, alpha >> dctcp_shift_g);
  if (delivered_ce) {
   u32 delivered = tp->delivered - ca->old_delivered;




   delivered_ce <<= (10 - dctcp_shift_g);
   delivered_ce /= max(1U, delivered);

   alpha = min(alpha + delivered_ce, DCTCP_MAX_ALPHA);
  }




  WRITE_ONCE(ca->dctcp_alpha, alpha);
  dctcp_reset(tp, ca);
 }
}
