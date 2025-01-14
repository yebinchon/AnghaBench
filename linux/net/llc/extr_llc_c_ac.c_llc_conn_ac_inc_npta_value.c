
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int inc_cntr; int dec_cntr; scalar_t__ npta; scalar_t__ dec_step; } ;


 scalar_t__ LLC_2_SEQ_NBR_MODULO ;
 struct llc_sock* llc_sk (struct sock*) ;

__attribute__((used)) static int llc_conn_ac_inc_npta_value(struct sock *sk, struct sk_buff *skb)
{
 struct llc_sock *llc = llc_sk(sk);

 if (!llc->inc_cntr) {
  llc->dec_step = 0;
  llc->dec_cntr = llc->inc_cntr = 2;
  ++llc->npta;
  if (llc->npta > (u8) ~LLC_2_SEQ_NBR_MODULO)
   llc->npta = (u8) ~LLC_2_SEQ_NBR_MODULO;
 } else
  --llc->inc_cntr;
 return 0;
}
