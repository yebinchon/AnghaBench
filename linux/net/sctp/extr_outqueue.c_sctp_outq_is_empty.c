
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_outq {scalar_t__ out_qlen; scalar_t__ outstanding_bytes; int retransmit; } ;


 scalar_t__ list_empty (int *) ;

int sctp_outq_is_empty(const struct sctp_outq *q)
{
 return q->out_qlen == 0 && q->outstanding_bytes == 0 &&
        list_empty(&q->retransmit);
}
