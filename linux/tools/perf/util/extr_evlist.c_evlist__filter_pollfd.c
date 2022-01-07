
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pollfd; } ;
struct evlist {TYPE_1__ core; } ;


 int fdarray__filter (int *,short,int ,int *) ;
 int perf_evlist__munmap_filtered ;

int evlist__filter_pollfd(struct evlist *evlist, short revents_and_mask)
{
 return fdarray__filter(&evlist->core.pollfd, revents_and_mask,
          perf_evlist__munmap_filtered, ((void*)0));
}
