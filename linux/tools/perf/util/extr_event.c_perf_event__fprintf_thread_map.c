
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union perf_event {int thread_map; } ;
struct perf_thread_map {int dummy; } ;
typedef int FILE ;


 size_t fprintf (int *,char*) ;
 int perf_thread_map__put (struct perf_thread_map*) ;
 scalar_t__ thread_map__fprintf (struct perf_thread_map*,int *) ;
 struct perf_thread_map* thread_map__new_event (int *) ;

size_t perf_event__fprintf_thread_map(union perf_event *event, FILE *fp)
{
 struct perf_thread_map *threads = thread_map__new_event(&event->thread_map);
 size_t ret;

 ret = fprintf(fp, " nr: ");

 if (threads)
  ret += thread_map__fprintf(threads, fp);
 else
  ret += fprintf(fp, "failed to get threads from event\n");

 perf_thread_map__put(threads);
 return ret;
}
