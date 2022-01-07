
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_stream {int outcnt; int out; } ;
struct sctp_sched_ops {int (* free ) (struct sctp_stream*) ;int (* sched_all ) (struct sctp_stream*) ;int (* unsched_all ) (struct sctp_stream*) ;} ;
typedef int gfp_t ;
typedef int __u16 ;
struct TYPE_2__ {int state; } ;


 TYPE_1__* SCTP_SO (struct sctp_stream*,int) ;
 int SCTP_STREAM_OPEN ;
 int __GFP_NOWARN ;
 int genradix_free (int *) ;
 struct sctp_sched_ops* sctp_sched_ops_from_stream (struct sctp_stream*) ;
 int sctp_stream_alloc_in (struct sctp_stream*,int,int ) ;
 int sctp_stream_alloc_out (struct sctp_stream*,int,int ) ;
 int sctp_stream_interleave_init (struct sctp_stream*) ;
 int sctp_stream_outq_migrate (struct sctp_stream*,int *,int) ;
 int stub1 (struct sctp_stream*) ;
 int stub2 (struct sctp_stream*) ;
 int stub3 (struct sctp_stream*) ;

int sctp_stream_init(struct sctp_stream *stream, __u16 outcnt, __u16 incnt,
       gfp_t gfp)
{
 struct sctp_sched_ops *sched = sctp_sched_ops_from_stream(stream);
 int i, ret = 0;

 gfp |= __GFP_NOWARN;




 if (outcnt == stream->outcnt)
  goto in;


 sched->unsched_all(stream);
 sctp_stream_outq_migrate(stream, ((void*)0), outcnt);
 sched->sched_all(stream);

 ret = sctp_stream_alloc_out(stream, outcnt, gfp);
 if (ret)
  goto out;

 for (i = 0; i < stream->outcnt; i++)
  SCTP_SO(stream, i)->state = SCTP_STREAM_OPEN;

in:
 sctp_stream_interleave_init(stream);
 if (!incnt)
  goto out;

 ret = sctp_stream_alloc_in(stream, incnt, gfp);
 if (ret) {
  sched->free(stream);
  genradix_free(&stream->out);
  stream->outcnt = 0;
  goto out;
 }

out:
 return ret;
}
