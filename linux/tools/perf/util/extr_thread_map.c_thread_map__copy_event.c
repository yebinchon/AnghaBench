
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_thread_map {int nr; int refcnt; TYPE_1__* map; } ;
struct perf_record_thread_map {unsigned int nr; TYPE_2__* entries; } ;
typedef int pid_t ;
struct TYPE_4__ {int comm; scalar_t__ pid; } ;
struct TYPE_3__ {int comm; } ;


 int perf_thread_map__set_pid (struct perf_thread_map*,unsigned int,int ) ;
 int refcount_set (int *,int) ;
 int strndup (int ,int) ;

__attribute__((used)) static void thread_map__copy_event(struct perf_thread_map *threads,
       struct perf_record_thread_map *event)
{
 unsigned i;

 threads->nr = (int) event->nr;

 for (i = 0; i < event->nr; i++) {
  perf_thread_map__set_pid(threads, i, (pid_t) event->entries[i].pid);
  threads->map[i].comm = strndup(event->entries[i].comm, 16);
 }

 refcount_set(&threads->refcnt, 1);
}
