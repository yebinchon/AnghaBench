
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
struct evsel {TYPE_2__ core; } ;
struct TYPE_3__ {int cpus; } ;
struct evlist {TYPE_1__ core; } ;


 int EINVAL ;
 int FD (struct evsel*,int,int) ;
 int PERF_EVENT_IOC_ENABLE ;
 int ioctl (int ,int ,int ) ;
 int perf_cpu_map__nr (int ) ;

__attribute__((used)) static int perf_evlist__enable_event_thread(struct evlist *evlist,
         struct evsel *evsel,
         int thread)
{
 int cpu;
 int nr_cpus = perf_cpu_map__nr(evlist->core.cpus);

 if (!evsel->core.fd)
  return -EINVAL;

 for (cpu = 0; cpu < nr_cpus; cpu++) {
  int err = ioctl(FD(evsel, cpu, thread), PERF_EVENT_IOC_ENABLE, 0);
  if (err)
   return err;
 }
 return 0;
}
