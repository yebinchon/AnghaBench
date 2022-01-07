
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int nr; int refcnt; } ;
typedef int pid_t ;


 int perf_thread_map__set_pid (struct perf_thread_map*,int ,int ) ;
 int refcount_set (int *,int) ;
 struct perf_thread_map* thread_map__alloc (int) ;

struct perf_thread_map *thread_map__new_by_tid(pid_t tid)
{
 struct perf_thread_map *threads = thread_map__alloc(1);

 if (threads != ((void*)0)) {
  perf_thread_map__set_pid(threads, 0, tid);
  threads->nr = 1;
  refcount_set(&threads->refcnt, 1);
 }

 return threads;
}
