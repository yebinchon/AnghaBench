
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int (* func ) (TYPE_4__*) ;} ;
struct sctp_inq {TYPE_4__ immediate; int in_chunk_list; } ;
struct sctp_chunk {TYPE_3__* asoc; int list; TYPE_1__* rcvr; } ;
struct TYPE_6__ {int ipackets; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct TYPE_5__ {scalar_t__ dead; } ;


 int list_add_tail (int *,int *) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int stub1 (TYPE_4__*) ;

void sctp_inq_push(struct sctp_inq *q, struct sctp_chunk *chunk)
{

 if (chunk->rcvr->dead) {
  sctp_chunk_free(chunk);
  return;
 }






 list_add_tail(&chunk->list, &q->in_chunk_list);
 if (chunk->asoc)
  chunk->asoc->stats.ipackets++;
 q->immediate.func(&q->immediate);
}
