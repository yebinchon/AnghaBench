
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int size; unsigned long bp_addr; int bp_len; int sample_period; int wakeup_events; int disabled; int exclude_kernel; int exclude_hv; scalar_t__ config; int sample_type; int bp_type; int type; } ;


 int F_SETFL ;
 int F_SETOWN ;
 int F_SETSIG ;
 int HW_BREAKPOINT_W ;
 int HW_BREAKPOINT_X ;
 int O_ASYNC ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PERF_EVENT_IOC_RESET ;
 int PERF_SAMPLE_IP ;
 int PERF_TYPE_BREAKPOINT ;
 int TEST_FAIL ;
 int fcntl (int,int ,int) ;
 int getpid () ;
 int ioctl (int,int ,int ) ;
 int memset (struct perf_event_attr*,int ,int) ;
 int perf_event_open_cloexec_flag () ;
 int pr_debug (char*,scalar_t__) ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

__attribute__((used)) static int __event(bool is_x, void *addr, int sig)
{
 struct perf_event_attr pe;
 int fd;

 memset(&pe, 0, sizeof(struct perf_event_attr));
 pe.type = PERF_TYPE_BREAKPOINT;
 pe.size = sizeof(struct perf_event_attr);

 pe.config = 0;
 pe.bp_type = is_x ? HW_BREAKPOINT_X : HW_BREAKPOINT_W;
 pe.bp_addr = (unsigned long) addr;
 pe.bp_len = sizeof(long);

 pe.sample_period = 1;
 pe.sample_type = PERF_SAMPLE_IP;
 pe.wakeup_events = 1;

 pe.disabled = 1;
 pe.exclude_kernel = 1;
 pe.exclude_hv = 1;

 fd = sys_perf_event_open(&pe, 0, -1, -1,
     perf_event_open_cloexec_flag());
 if (fd < 0) {
  pr_debug("failed opening event %llx\n", pe.config);
  return TEST_FAIL;
 }

 fcntl(fd, F_SETFL, O_RDWR|O_NONBLOCK|O_ASYNC);
 fcntl(fd, F_SETSIG, sig);
 fcntl(fd, F_SETOWN, getpid());

 ioctl(fd, PERF_EVENT_IOC_RESET, 0);

 return fd;
}
