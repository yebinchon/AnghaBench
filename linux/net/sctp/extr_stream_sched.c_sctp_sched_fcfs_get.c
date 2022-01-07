
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_stream {int dummy; } ;
typedef scalar_t__ __u16 ;



__attribute__((used)) static int sctp_sched_fcfs_get(struct sctp_stream *stream, __u16 sid,
          __u16 *value)
{
 *value = 0;
 return 0;
}
