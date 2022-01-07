
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream {int dummy; } ;


 int sctp_sched_rr_unsched_all (struct sctp_stream*) ;

__attribute__((used)) static void sctp_sched_rr_free(struct sctp_stream *stream)
{
 sctp_sched_rr_unsched_all(stream);
}
