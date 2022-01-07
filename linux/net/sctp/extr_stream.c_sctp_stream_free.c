
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_stream {int outcnt; int in; int out; } ;
struct sctp_sched_ops {int (* free ) (struct sctp_stream*) ;} ;
struct TYPE_2__ {int ext; } ;


 TYPE_1__* SCTP_SO (struct sctp_stream*,int) ;
 int genradix_free (int *) ;
 int kfree (int ) ;
 struct sctp_sched_ops* sctp_sched_ops_from_stream (struct sctp_stream*) ;
 int stub1 (struct sctp_stream*) ;

void sctp_stream_free(struct sctp_stream *stream)
{
 struct sctp_sched_ops *sched = sctp_sched_ops_from_stream(stream);
 int i;

 sched->free(stream);
 for (i = 0; i < stream->outcnt; i++)
  kfree(SCTP_SO(stream, i)->ext);
 genradix_free(&stream->out);
 genradix_free(&stream->in);
}
