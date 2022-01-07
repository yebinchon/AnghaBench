
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * root; } ;
struct TYPE_8__ {TYPE_3__ tree; } ;
struct TYPE_5__ {int * root; } ;
struct TYPE_6__ {TYPE_1__ tree; } ;
struct sctp_stream {scalar_t__ incnt; int outcnt; TYPE_4__ in; TYPE_2__ out; } ;
struct sctp_sched_ops {int (* sched_all ) (struct sctp_stream*) ;int (* unsched_all ) (struct sctp_stream*) ;} ;


 struct sctp_sched_ops* sctp_sched_ops_from_stream (struct sctp_stream*) ;
 int sctp_stream_free (struct sctp_stream*) ;
 int sctp_stream_outq_migrate (struct sctp_stream*,struct sctp_stream*,int ) ;
 int stub1 (struct sctp_stream*) ;
 int stub2 (struct sctp_stream*) ;

void sctp_stream_update(struct sctp_stream *stream, struct sctp_stream *new)
{
 struct sctp_sched_ops *sched = sctp_sched_ops_from_stream(stream);

 sched->unsched_all(stream);
 sctp_stream_outq_migrate(stream, new, new->outcnt);
 sctp_stream_free(stream);

 stream->out = new->out;
 stream->in = new->in;
 stream->outcnt = new->outcnt;
 stream->incnt = new->incnt;

 sched->sched_all(stream);

 new->out.tree.root = ((void*)0);
 new->in.tree.root = ((void*)0);
 new->outcnt = 0;
 new->incnt = 0;
}
