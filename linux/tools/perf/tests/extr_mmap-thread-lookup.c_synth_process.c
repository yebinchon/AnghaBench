
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int dummy; } ;
struct machine {int dummy; } ;


 int getpid () ;
 int perf_event__process ;
 int perf_event__synthesize_thread_map (int *,struct perf_thread_map*,int ,struct machine*,int ) ;
 int perf_thread_map__put (struct perf_thread_map*) ;
 struct perf_thread_map* thread_map__new_by_pid (int ) ;

__attribute__((used)) static int synth_process(struct machine *machine)
{
 struct perf_thread_map *map;
 int err;

 map = thread_map__new_by_pid(getpid());

 err = perf_event__synthesize_thread_map(((void*)0), map,
      perf_event__process,
      machine, 0);

 perf_thread_map__put(map);
 return err;
}
