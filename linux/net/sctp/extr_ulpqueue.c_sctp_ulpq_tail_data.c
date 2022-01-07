
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int dummy; } ;
struct sctp_ulpevent {int msg_flags; int ppid; int ssn; } ;
struct TYPE_4__ {TYPE_1__* data_hdr; } ;
struct sctp_chunk {TYPE_2__ subh; int asoc; } ;
typedef int gfp_t ;
struct TYPE_3__ {int ppid; int ssn; } ;


 int ENOMEM ;
 int MSG_EOR ;
 int __skb_queue_tail (struct sk_buff_head*,int ) ;
 int ntohs (int ) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_rcvmsg (int ,struct sctp_chunk*,int ) ;
 struct sctp_ulpevent* sctp_ulpq_order (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpq_reasm (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 int sctp_ulpq_tail_event (struct sctp_ulpq*,struct sk_buff_head*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;

int sctp_ulpq_tail_data(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
   gfp_t gfp)
{
 struct sk_buff_head temp;
 struct sctp_ulpevent *event;
 int event_eor = 0;


 event = sctp_ulpevent_make_rcvmsg(chunk->asoc, chunk, gfp);
 if (!event)
  return -ENOMEM;

 event->ssn = ntohs(chunk->subh.data_hdr->ssn);
 event->ppid = chunk->subh.data_hdr->ppid;


 event = sctp_ulpq_reasm(ulpq, event);


 if (event) {

  skb_queue_head_init(&temp);
  __skb_queue_tail(&temp, sctp_event2skb(event));

  if (event->msg_flags & MSG_EOR)
   event = sctp_ulpq_order(ulpq, event);
 }




 if (event) {
  event_eor = (event->msg_flags & MSG_EOR) ? 1 : 0;
  sctp_ulpq_tail_event(ulpq, &temp);
 }

 return event_eor;
}
