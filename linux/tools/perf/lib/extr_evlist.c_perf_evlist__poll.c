
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evlist {int pollfd; } ;


 int fdarray__poll (int *,int) ;

int perf_evlist__poll(struct perf_evlist *evlist, int timeout)
{
 return fdarray__poll(&evlist->pollfd, timeout);
}
