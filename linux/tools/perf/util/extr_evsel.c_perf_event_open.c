
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int precise_ip; } ;
struct TYPE_4__ {TYPE_2__ attr; } ;
struct evsel {TYPE_1__ core; int precise_max; } ;
typedef int pid_t ;


 int ENOTSUP ;
 int display_attr (TYPE_2__*) ;
 int pr_debug2 (char*,int,...) ;
 int sys_perf_event_open (TYPE_2__*,int ,int,int,unsigned long) ;

__attribute__((used)) static int perf_event_open(struct evsel *evsel,
      pid_t pid, int cpu, int group_fd,
      unsigned long flags)
{
 int precise_ip = evsel->core.attr.precise_ip;
 int fd;

 while (1) {
  pr_debug2("sys_perf_event_open: pid %d  cpu %d  group_fd %d  flags %#lx",
     pid, cpu, group_fd, flags);

  fd = sys_perf_event_open(&evsel->core.attr, pid, cpu, group_fd, flags);
  if (fd >= 0)
   break;


  if (!evsel->precise_max)
   break;





  if (!evsel->core.attr.precise_ip) {
   evsel->core.attr.precise_ip = precise_ip;
   break;
  }

  pr_debug2("\nsys_perf_event_open failed, error %d\n", -ENOTSUP);
  evsel->core.attr.precise_ip--;
  pr_debug2("decreasing precise_ip by one (%d)\n", evsel->core.attr.precise_ip);
  display_attr(&evsel->core.attr);
 }

 return fd;
}
