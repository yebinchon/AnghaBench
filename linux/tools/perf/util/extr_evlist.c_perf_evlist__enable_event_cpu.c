
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct evsel {TYPE_1__ core; } ;
struct evlist {int dummy; } ;


 int EINVAL ;
 int FD (struct evsel*,int,int) ;
 int PERF_EVENT_IOC_ENABLE ;
 int ioctl (int ,int ,int ) ;
 int perf_evlist__nr_threads (struct evlist*,struct evsel*) ;

__attribute__((used)) static int perf_evlist__enable_event_cpu(struct evlist *evlist,
      struct evsel *evsel, int cpu)
{
 int thread;
 int nr_threads = perf_evlist__nr_threads(evlist, evsel);

 if (!evsel->core.fd)
  return -EINVAL;

 for (thread = 0; thread < nr_threads; thread++) {
  int err = ioctl(FD(evsel, cpu, thread), PERF_EVENT_IOC_ENABLE, 0);
  if (err)
   return err;
 }
 return 0;
}
