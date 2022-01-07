
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sctp_ulpq {TYPE_2__* asoc; int pd_mode; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sock {int data_ready_signalled; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct sock* sk; } ;
struct TYPE_4__ {int subscribe; TYPE_1__ base; } ;


 int SCTP_PARTIAL_DELIVERY_ABORTED ;
 int SCTP_PARTIAL_DELIVERY_EVENT ;
 int __skb_queue_tail (int *,int ) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_pdapi (TYPE_2__*,int ,int ,int ,int ,int ) ;
 scalar_t__ sctp_ulpevent_type_enabled (int ,int ) ;
 scalar_t__ sctp_ulpq_clear_pd (struct sctp_ulpq*) ;
 int stub1 (struct sock*) ;

void sctp_ulpq_abort_pd(struct sctp_ulpq *ulpq, gfp_t gfp)
{
 struct sctp_ulpevent *ev = ((void*)0);
 struct sctp_sock *sp;
 struct sock *sk;

 if (!ulpq->pd_mode)
  return;

 sk = ulpq->asoc->base.sk;
 sp = sctp_sk(sk);
 if (sctp_ulpevent_type_enabled(ulpq->asoc->subscribe,
           SCTP_PARTIAL_DELIVERY_EVENT))
  ev = sctp_ulpevent_make_pdapi(ulpq->asoc,
           SCTP_PARTIAL_DELIVERY_ABORTED,
           0, 0, 0, gfp);
 if (ev)
  __skb_queue_tail(&sk->sk_receive_queue, sctp_event2skb(ev));


 if ((sctp_ulpq_clear_pd(ulpq) || ev) && !sp->data_ready_signalled) {
  sp->data_ready_signalled = 1;
  sk->sk_data_ready(sk);
 }
}
