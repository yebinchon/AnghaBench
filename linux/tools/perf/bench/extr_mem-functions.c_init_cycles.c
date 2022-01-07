
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int cycle_attr ;
 scalar_t__ cycles_fd ;
 scalar_t__ errno ;
 int getpid () ;
 int perf_event_open_cloexec_flag () ;
 int pr_debug (char*) ;
 scalar_t__ sys_perf_event_open (int *,int ,int,int,int ) ;

__attribute__((used)) static int init_cycles(void)
{
 cycles_fd = sys_perf_event_open(&cycle_attr, getpid(), -1, -1, perf_event_open_cloexec_flag());

 if (cycles_fd < 0 && errno == ENOSYS) {
  pr_debug("No CONFIG_PERF_EVENTS=y kernel support configured?\n");
  return -1;
 }

 return cycles_fd;
}
