
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_outq {int asoc; } ;


 int __sctp_outq_teardown (struct sctp_outq*) ;
 int sctp_outq_init (int ,struct sctp_outq*) ;

void sctp_outq_teardown(struct sctp_outq *q)
{
 __sctp_outq_teardown(q);
 sctp_outq_init(q->asoc, q);
}
