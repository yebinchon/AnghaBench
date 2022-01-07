
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int freq; int sample_period; int inherit; int config; int type; } ;


 int PERF_COUNT_SW_CPU_CLOCK ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_EVENT_IOC_SET_BPF ;
 int PERF_TYPE_SOFTWARE ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int nr_cpus ;
 int * prog_fd ;
 int stderr ;
 int sys_perf_event_open (struct perf_event_attr*,int,int,int,int ) ;

__attribute__((used)) static int sampling_start(int *pmu_fd, int freq)
{
 int i;

 struct perf_event_attr pe_sample_attr = {
  .type = PERF_TYPE_SOFTWARE,
  .freq = 1,
  .sample_period = freq,
  .config = PERF_COUNT_SW_CPU_CLOCK,
  .inherit = 1,
 };

 for (i = 0; i < nr_cpus; i++) {
  pmu_fd[i] = sys_perf_event_open(&pe_sample_attr, -1 , i,
         -1 , 0 );
  if (pmu_fd[i] < 0) {
   fprintf(stderr, "ERROR: Initializing perf sampling\n");
   return 1;
  }
  assert(ioctl(pmu_fd[i], PERF_EVENT_IOC_SET_BPF,
        prog_fd[0]) == 0);
  assert(ioctl(pmu_fd[i], PERF_EVENT_IOC_ENABLE, 0) == 0);
 }

 return 0;
}
