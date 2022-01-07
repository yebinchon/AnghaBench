
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream_out_ext {int rr_list; } ;
struct sctp_stream {struct sctp_stream_out_ext* rr_next; int rr_list; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void sctp_sched_rr_sched(struct sctp_stream *stream,
    struct sctp_stream_out_ext *soute)
{
 if (!list_empty(&soute->rr_list))

  return;


 list_add_tail(&soute->rr_list, &stream->rr_list);

 if (!stream->rr_next)
  stream->rr_next = soute;
}
