
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sctp_stream_out {int dummy; } ;
struct sctp_outq {TYPE_3__* sched; TYPE_2__* asoc; } ;
struct sctp_chunk {TYPE_4__* msg; int frag_list; } ;
typedef int __u16 ;
struct TYPE_10__ {struct sctp_stream_out* out_curr; } ;
struct TYPE_9__ {int chunks; } ;
struct TYPE_8__ {int (* dequeue_done ) (struct sctp_outq*,struct sctp_chunk*) ;} ;
struct TYPE_6__ {int intl_capable; } ;
struct TYPE_7__ {TYPE_5__ stream; TYPE_1__ peer; } ;


 struct sctp_stream_out* SCTP_SO (TYPE_5__*,int ) ;
 int list_is_last (int *,int *) ;
 int sctp_chunk_stream_no (struct sctp_chunk*) ;
 int stub1 (struct sctp_outq*,struct sctp_chunk*) ;

void sctp_sched_dequeue_done(struct sctp_outq *q, struct sctp_chunk *ch)
{
 if (!list_is_last(&ch->frag_list, &ch->msg->chunks) &&
     !q->asoc->peer.intl_capable) {
  struct sctp_stream_out *sout;
  __u16 sid;





  sid = sctp_chunk_stream_no(ch);
  sout = SCTP_SO(&q->asoc->stream, sid);
  q->asoc->stream.out_curr = sout;
  return;
 }

 q->asoc->stream.out_curr = ((void*)0);
 q->sched->dequeue_done(q, ch);
}
