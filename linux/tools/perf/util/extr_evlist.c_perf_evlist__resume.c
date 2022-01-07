
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int perf_evlist__set_paused (struct evlist*,int) ;

__attribute__((used)) static int perf_evlist__resume(struct evlist *evlist)
{
 return perf_evlist__set_paused(evlist, 0);
}
