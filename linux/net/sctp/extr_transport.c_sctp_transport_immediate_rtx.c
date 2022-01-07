
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_transport {scalar_t__ rto; int T3_rtx_timer; TYPE_1__* asoc; } ;
struct TYPE_2__ {int outqueue; } ;


 int SCTP_RTXR_T3_RTX ;
 scalar_t__ del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int sctp_retransmit (int *,struct sctp_transport*,int ) ;
 int sctp_transport_hold (struct sctp_transport*) ;
 int sctp_transport_put (struct sctp_transport*) ;
 int timer_pending (int *) ;

void sctp_transport_immediate_rtx(struct sctp_transport *t)
{

 if (del_timer(&t->T3_rtx_timer))
  sctp_transport_put(t);

 sctp_retransmit(&t->asoc->outqueue, t, SCTP_RTXR_T3_RTX);
 if (!timer_pending(&t->T3_rtx_timer)) {
  if (!mod_timer(&t->T3_rtx_timer, jiffies + t->rto))
   sctp_transport_hold(t);
 }
}
