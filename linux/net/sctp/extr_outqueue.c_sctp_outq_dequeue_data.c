
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_outq {TYPE_1__* sched; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {struct sctp_chunk* (* dequeue ) (struct sctp_outq*) ;} ;


 struct sctp_chunk* stub1 (struct sctp_outq*) ;

__attribute__((used)) static inline struct sctp_chunk *sctp_outq_dequeue_data(struct sctp_outq *q)
{
 return q->sched->dequeue(q);
}
