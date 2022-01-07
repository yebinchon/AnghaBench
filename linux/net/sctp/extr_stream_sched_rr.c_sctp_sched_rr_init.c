
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream {int * rr_next; int rr_list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static int sctp_sched_rr_init(struct sctp_stream *stream)
{
 INIT_LIST_HEAD(&stream->rr_list);
 stream->rr_next = ((void*)0);

 return 0;
}
