
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_outq {TYPE_1__* asoc; } ;
struct sctp_flush_ctx {int gfp; int * packet; TYPE_1__* asoc; int transport_list; int * transport; struct sctp_outq* q; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ src_out_of_asoc_ok; } ;


 int LIST_HEAD_INIT (int ) ;
 int sctp_outq_flush_ctrl (struct sctp_flush_ctx*) ;
 int sctp_outq_flush_data (struct sctp_flush_ctx*,int) ;
 int sctp_outq_flush_transports (struct sctp_flush_ctx*) ;

__attribute__((used)) static void sctp_outq_flush(struct sctp_outq *q, int rtx_timeout, gfp_t gfp)
{
 struct sctp_flush_ctx ctx = {
  .q = q,
  .transport = ((void*)0),
  .transport_list = LIST_HEAD_INIT(ctx.transport_list),
  .asoc = q->asoc,
  .packet = ((void*)0),
  .gfp = gfp,
 };
 sctp_outq_flush_ctrl(&ctx);

 if (q->asoc->src_out_of_asoc_ok)
  goto sctp_flush_out;

 sctp_outq_flush_data(&ctx, rtx_timeout);

sctp_flush_out:

 sctp_outq_flush_transports(&ctx);
}
