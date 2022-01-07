
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int nr; } ;


 int comm_init (struct perf_thread_map*,int) ;

void thread_map__read_comms(struct perf_thread_map *threads)
{
 int i;

 for (i = 0; i < threads->nr; ++i)
  comm_init(threads, i);
}
