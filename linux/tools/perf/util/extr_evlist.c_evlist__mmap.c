
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int PERF_AFFINITY_SYS ;
 int evlist__mmap_ex (struct evlist*,unsigned int,int ,int,int ,int ,int,int ) ;

int evlist__mmap(struct evlist *evlist, unsigned int pages)
{
 return evlist__mmap_ex(evlist, pages, 0, 0, 0, PERF_AFFINITY_SYS, 1, 0);
}
