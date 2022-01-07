
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int core; } ;


 int perf_evlist__poll (int *,int) ;

int evlist__poll(struct evlist *evlist, int timeout)
{
 return perf_evlist__poll(&evlist->core, timeout);
}
