
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_buffer {int dummy; } ;


 int tcp_notifier_poller (struct perf_buffer*) ;

__attribute__((used)) static void *poller_thread(void *arg)
{
 struct perf_buffer *pb = arg;

 tcp_notifier_poller(pb);
 return arg;
}
