
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int inherit; } ;


 int PERF_EVENT_IOC_DISABLE ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_EVENT_IOC_SET_BPF ;
 int assert (int) ;
 int close (int) ;
 scalar_t__ generate_load () ;
 int int_exit (int ) ;
 scalar_t__ ioctl (int,int ,...) ;
 int print_stacks () ;
 int printf (char*) ;
 int * prog_fd ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

__attribute__((used)) static void test_perf_event_task(struct perf_event_attr *attr)
{
 int pmu_fd, error = 0;




 attr->inherit = 1;


 pmu_fd = sys_perf_event_open(attr, 0, -1, -1, 0);
 if (pmu_fd < 0) {
  printf("sys_perf_event_open failed\n");
  int_exit(0);
 }
 assert(ioctl(pmu_fd, PERF_EVENT_IOC_SET_BPF, prog_fd[0]) == 0);
 assert(ioctl(pmu_fd, PERF_EVENT_IOC_ENABLE) == 0);

 if (generate_load() < 0) {
  error = 1;
  goto err;
 }
 print_stacks();
err:
 ioctl(pmu_fd, PERF_EVENT_IOC_DISABLE);
 close(pmu_fd);
 if (error)
  int_exit(0);
}
