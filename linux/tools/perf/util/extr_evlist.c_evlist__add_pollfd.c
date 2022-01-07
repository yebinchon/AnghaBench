
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int core; } ;


 int POLLIN ;
 int perf_evlist__add_pollfd (int *,int,int *,int ) ;

int evlist__add_pollfd(struct evlist *evlist, int fd)
{
 return perf_evlist__add_pollfd(&evlist->core, fd, ((void*)0), POLLIN);
}
