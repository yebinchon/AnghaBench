
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sched {int show_callchain; } ;
struct perf_sample {int * callchain; } ;
struct idle_thread_runtime {int cursor; } ;


 int callchain_cursor ;
 int callchain_cursor__copy (int *,int *) ;

__attribute__((used)) static void save_idle_callchain(struct perf_sched *sched,
    struct idle_thread_runtime *itr,
    struct perf_sample *sample)
{
 if (!sched->show_callchain || sample->callchain == ((void*)0))
  return;

 callchain_cursor__copy(&itr->cursor, &callchain_cursor);
}
