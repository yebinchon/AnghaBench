
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream_out_ext {int rr_list; } ;
struct sctp_stream {struct sctp_stream_out_ext* rr_next; int rr_list; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int sctp_sched_rr_next_stream (struct sctp_stream*) ;

__attribute__((used)) static void sctp_sched_rr_unsched(struct sctp_stream *stream,
      struct sctp_stream_out_ext *soute)
{
 if (stream->rr_next == soute)

  sctp_sched_rr_next_stream(stream);

 list_del_init(&soute->rr_list);


 if (list_empty(&stream->rr_list))
  stream->rr_next = ((void*)0);
}
