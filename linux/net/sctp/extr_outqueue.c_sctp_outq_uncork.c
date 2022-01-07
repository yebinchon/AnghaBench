
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_outq {scalar_t__ cork; } ;
typedef int gfp_t ;


 int sctp_outq_flush (struct sctp_outq*,int ,int ) ;

void sctp_outq_uncork(struct sctp_outq *q, gfp_t gfp)
{
 if (q->cork)
  q->cork = 0;

 sctp_outq_flush(q, 0, gfp);
}
