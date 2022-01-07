
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_outq {int out_qlen; } ;
struct sctp_chunk {TYPE_1__* skb; int stream_list; int list; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int list_del_init (int *) ;

void sctp_sched_dequeue_common(struct sctp_outq *q, struct sctp_chunk *ch)
{
 list_del_init(&ch->list);
 list_del_init(&ch->stream_list);
 q->out_qlen -= ch->skb->len;
}
