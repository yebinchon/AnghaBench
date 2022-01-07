
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_buffer {int dummy; } ;


 int EINTR ;
 int perf_buffer__poll (struct perf_buffer*,int) ;
 int printf (char*,int) ;

void tcp_notifier_poller(struct perf_buffer *pb)
{
 int err;

 while (1) {
  err = perf_buffer__poll(pb, 100);
  if (err < 0 && err != -EINTR) {
   printf("failed perf_buffer__poll: %d\n", err);
   return;
  }
 }
}
