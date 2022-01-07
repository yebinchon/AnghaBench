
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct evsel {TYPE_1__ core; struct evsel* leader; } ;


 int BUG_ON (int) ;
 int FD (struct evsel*,int,int) ;
 scalar_t__ perf_evsel__is_group_leader (struct evsel*) ;

__attribute__((used)) static int get_group_fd(struct evsel *evsel, int cpu, int thread)
{
 struct evsel *leader = evsel->leader;
 int fd;

 if (perf_evsel__is_group_leader(evsel))
  return -1;





 BUG_ON(!leader->core.fd);

 fd = FD(leader, cpu, thread);
 BUG_ON(fd == -1);

 return fd;
}
