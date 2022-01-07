
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
typedef int pid_t ;


 int errno ;
 int exit (int) ;
 int pr_err (char*) ;
 scalar_t__ store_event (struct perf_event_attr*,int ,int,int,int,unsigned long) ;

void test_attr__open(struct perf_event_attr *attr, pid_t pid, int cpu,
       int fd, int group_fd, unsigned long flags)
{
 int errno_saved = errno;

 if ((fd != -1) && store_event(attr, pid, cpu, fd, group_fd, flags)) {
  pr_err("test attr FAILED");
  exit(128);
 }

 errno = errno_saved;
}
