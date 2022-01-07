
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {scalar_t__ inherit; } ;


 int PERF_EVENT_IOC_DISABLE ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_EVENT_IOC_SET_BPF ;
 int _SC_NPROCESSORS_CONF ;
 int assert (int) ;
 int close (int) ;
 int free (int*) ;
 scalar_t__ generate_load () ;
 int int_exit (int ) ;
 scalar_t__ ioctl (int,int ,...) ;
 int* malloc (int) ;
 int print_stacks () ;
 int printf (char*) ;
 int * prog_fd ;
 int sys_perf_event_open (struct perf_event_attr*,int,int,int,int ) ;
 int sysconf (int ) ;

__attribute__((used)) static void test_perf_event_all_cpu(struct perf_event_attr *attr)
{
 int nr_cpus = sysconf(_SC_NPROCESSORS_CONF);
 int *pmu_fd = malloc(nr_cpus * sizeof(int));
 int i, error = 0;


 attr->inherit = 0;


 for (i = 0; i < nr_cpus; i++) {
  pmu_fd[i] = sys_perf_event_open(attr, -1, i, -1, 0);
  if (pmu_fd[i] < 0) {
   printf("sys_perf_event_open failed\n");
   error = 1;
   goto all_cpu_err;
  }
  assert(ioctl(pmu_fd[i], PERF_EVENT_IOC_SET_BPF, prog_fd[0]) == 0);
  assert(ioctl(pmu_fd[i], PERF_EVENT_IOC_ENABLE) == 0);
 }

 if (generate_load() < 0) {
  error = 1;
  goto all_cpu_err;
 }
 print_stacks();
all_cpu_err:
 for (i--; i >= 0; i--) {
  ioctl(pmu_fd[i], PERF_EVENT_IOC_DISABLE);
  close(pmu_fd[i]);
 }
 free(pmu_fd);
 if (error)
  int_exit(0);
}
