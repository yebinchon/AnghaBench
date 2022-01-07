
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
typedef int pid_t ;


 int __NR_perf_event_open ;
 int syscall (int ,struct perf_event_attr*,int ,int,int,unsigned long) ;
 int test_attr__enabled ;
 int test_attr__open (struct perf_event_attr*,int ,int,int,int,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int
sys_perf_event_open(struct perf_event_attr *attr,
        pid_t pid, int cpu, int group_fd,
        unsigned long flags)
{
 int fd;

 fd = syscall(__NR_perf_event_open, attr, pid, cpu,
       group_fd, flags);





 return fd;
}
