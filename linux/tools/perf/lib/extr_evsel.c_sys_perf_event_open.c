
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
typedef int pid_t ;


 int __NR_perf_event_open ;
 int syscall (int ,struct perf_event_attr*,int ,int,int,unsigned long) ;

__attribute__((used)) static int
sys_perf_event_open(struct perf_event_attr *attr,
      pid_t pid, int cpu, int group_fd,
      unsigned long flags)
{
 return syscall(__NR_perf_event_open, attr, pid, cpu, group_fd, flags);
}
