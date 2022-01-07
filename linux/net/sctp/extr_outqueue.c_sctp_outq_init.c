
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_outq {int abandoned; int sacked; int retransmit; int control_chunk_list; int out_chunk_list; struct sctp_association* asoc; } ;
struct TYPE_3__ {int sk; } ;
struct sctp_association {TYPE_1__ base; } ;
struct TYPE_4__ {int default_ss; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct sctp_outq*,int ,int) ;
 int sctp_sched_set_sched (struct sctp_association*,int ) ;
 TYPE_2__* sctp_sk (int ) ;

void sctp_outq_init(struct sctp_association *asoc, struct sctp_outq *q)
{
 memset(q, 0, sizeof(struct sctp_outq));

 q->asoc = asoc;
 INIT_LIST_HEAD(&q->out_chunk_list);
 INIT_LIST_HEAD(&q->control_chunk_list);
 INIT_LIST_HEAD(&q->retransmit);
 INIT_LIST_HEAD(&q->sacked);
 INIT_LIST_HEAD(&q->abandoned);
 sctp_sched_set_sched(asoc, sctp_sk(asoc->base.sk)->default_ss);
}
