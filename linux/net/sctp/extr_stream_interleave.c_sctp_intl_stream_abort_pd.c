
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sctp_ulpq {TYPE_2__* asoc; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sock {int data_ready_signalled; } ;
typedef int gfp_t ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_3__ {struct sock* sk; } ;
struct TYPE_4__ {int subscribe; TYPE_1__ base; } ;


 int SCTP_PARTIAL_DELIVERY_ABORTED ;
 int SCTP_PARTIAL_DELIVERY_EVENT ;
 int __skb_queue_tail (int *,int ) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_pdapi (TYPE_2__*,int ,int ,int ,int ,int ) ;
 int sctp_ulpevent_type_enabled (int ,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void sctp_intl_stream_abort_pd(struct sctp_ulpq *ulpq, __u16 sid,
          __u32 mid, __u16 flags, gfp_t gfp)
{
 struct sock *sk = ulpq->asoc->base.sk;
 struct sctp_ulpevent *ev = ((void*)0);

 if (!sctp_ulpevent_type_enabled(ulpq->asoc->subscribe,
     SCTP_PARTIAL_DELIVERY_EVENT))
  return;

 ev = sctp_ulpevent_make_pdapi(ulpq->asoc, SCTP_PARTIAL_DELIVERY_ABORTED,
          sid, mid, flags, gfp);
 if (ev) {
  struct sctp_sock *sp = sctp_sk(sk);

  __skb_queue_tail(&sk->sk_receive_queue, sctp_event2skb(ev));

  if (!sp->data_ready_signalled) {
   sp->data_ready_signalled = 1;
   sk->sk_data_ready(sk);
  }
 }
}
