
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
typedef int pid_t ;


 int perf_evlist__set_tp_filter_pids (struct evlist*,int,int *) ;

int perf_evlist__set_tp_filter_pid(struct evlist *evlist, pid_t pid)
{
 return perf_evlist__set_tp_filter_pids(evlist, 1, &pid);
}
