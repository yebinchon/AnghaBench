
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_thread_map {int nr; } ;
struct TYPE_2__ {scalar_t__ system_wide; } ;
struct evsel {TYPE_1__ core; int ignore_missing_thread; } ;
typedef int pid_t ;


 int ESRCH ;
 int perf_thread_map__pid (struct perf_thread_map*,int) ;
 int pr_warning (char*,int ) ;
 scalar_t__ thread_map__remove (struct perf_thread_map*,int) ;
 scalar_t__ update_fds (struct evsel*,int,int,int,int) ;

__attribute__((used)) static bool ignore_missing_thread(struct evsel *evsel,
      int nr_cpus, int cpu,
      struct perf_thread_map *threads,
      int thread, int err)
{
 pid_t ignore_pid = perf_thread_map__pid(threads, thread);

 if (!evsel->ignore_missing_thread)
  return 0;


 if (evsel->core.system_wide)
  return 0;


 if (err != -ESRCH)
  return 0;


 if (threads->nr == 1)
  return 0;





 if (update_fds(evsel, nr_cpus, cpu, threads->nr, thread))
  return 0;

 if (thread_map__remove(threads, thread))
  return 0;

 pr_warning("WARNING: Ignored open failure for pid %d\n",
     ignore_pid);
 return 1;
}
