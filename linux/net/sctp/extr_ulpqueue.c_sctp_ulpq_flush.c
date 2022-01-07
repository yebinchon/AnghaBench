
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sctp_ulpq {int reasm_uo; int reasm; int lobby; } ;
struct sctp_ulpevent {int dummy; } ;


 struct sk_buff* __skb_dequeue (int *) ;
 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_free (struct sctp_ulpevent*) ;

void sctp_ulpq_flush(struct sctp_ulpq *ulpq)
{
 struct sk_buff *skb;
 struct sctp_ulpevent *event;

 while ((skb = __skb_dequeue(&ulpq->lobby)) != ((void*)0)) {
  event = sctp_skb2event(skb);
  sctp_ulpevent_free(event);
 }

 while ((skb = __skb_dequeue(&ulpq->reasm)) != ((void*)0)) {
  event = sctp_skb2event(skb);
  sctp_ulpevent_free(event);
 }

 while ((skb = __skb_dequeue(&ulpq->reasm_uo)) != ((void*)0)) {
  event = sctp_skb2event(skb);
  sctp_ulpevent_free(event);
 }
}
