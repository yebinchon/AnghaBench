
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cork_fd; } ;
struct evlist {TYPE_1__ workload; } ;


 int close (scalar_t__) ;
 int perror (char*) ;
 int write (scalar_t__,char*,int) ;

int perf_evlist__start_workload(struct evlist *evlist)
{
 if (evlist->workload.cork_fd > 0) {
  char bf = 0;
  int ret;



  ret = write(evlist->workload.cork_fd, &bf, 1);
  if (ret < 0)
   perror("unable to write to pipe");

  close(evlist->workload.cork_fd);
  return ret;
 }

 return 0;
}
