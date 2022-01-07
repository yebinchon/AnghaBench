
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct perf_record_thread_map {int nr; } ;


 struct perf_thread_map* thread_map__alloc (int ) ;
 int thread_map__copy_event (struct perf_thread_map*,struct perf_record_thread_map*) ;

struct perf_thread_map *thread_map__new_event(struct perf_record_thread_map *event)
{
 struct perf_thread_map *threads;

 threads = thread_map__alloc(event->nr);
 if (threads)
  thread_map__copy_event(threads, event);

 return threads;
}
