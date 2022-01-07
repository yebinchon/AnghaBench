
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream {int prio_list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static int sctp_sched_prio_init(struct sctp_stream *stream)
{
 INIT_LIST_HEAD(&stream->prio_list);

 return 0;
}
