
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_ulpq {scalar_t__ pd_mode; struct sctp_association* asoc; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sock {int pd_mode; scalar_t__ frag_interleave; } ;
struct TYPE_7__ {int tsn_map; } ;
struct TYPE_6__ {int reasm; } ;
struct TYPE_5__ {int sk; } ;
struct sctp_association {TYPE_3__ peer; TYPE_2__ ulpq; TYPE_1__ base; } ;
typedef int gfp_t ;
typedef int __u32 ;
struct TYPE_8__ {int tsn; } ;


 int TSN_lte (int ,int ) ;
 int __skb_queue_tail (struct sk_buff_head*,int ) ;
 scalar_t__ atomic_read (int *) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_sock* sctp_sk (int ) ;
 TYPE_4__* sctp_skb2event (struct sk_buff*) ;
 int sctp_tsnmap_get_ctsn (int *) ;
 struct sctp_ulpevent* sctp_ulpq_retrieve_first (struct sctp_ulpq*) ;
 int sctp_ulpq_set_pd (struct sctp_ulpq*) ;
 int sctp_ulpq_tail_event (struct sctp_ulpq*,struct sk_buff_head*) ;
 struct sk_buff* skb_peek (int *) ;
 int skb_queue_head_init (struct sk_buff_head*) ;

void sctp_ulpq_partial_delivery(struct sctp_ulpq *ulpq,
    gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_association *asoc;
 struct sctp_sock *sp;
 __u32 ctsn;
 struct sk_buff *skb;

 asoc = ulpq->asoc;
 sp = sctp_sk(asoc->base.sk);




 if (ulpq->pd_mode)
  return;




 skb = skb_peek(&asoc->ulpq.reasm);
 if (skb != ((void*)0)) {
  ctsn = sctp_skb2event(skb)->tsn;
  if (!TSN_lte(ctsn, sctp_tsnmap_get_ctsn(&asoc->peer.tsn_map)))
   return;
 }






 if (sp->frag_interleave || atomic_read(&sp->pd_mode) == 0) {

  event = sctp_ulpq_retrieve_first(ulpq);

  if (event) {
   struct sk_buff_head temp;

   skb_queue_head_init(&temp);
   __skb_queue_tail(&temp, sctp_event2skb(event));
   sctp_ulpq_tail_event(ulpq, &temp);
   sctp_ulpq_set_pd(ulpq);
   return;
  }
 }
}
