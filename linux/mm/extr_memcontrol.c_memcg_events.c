
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int * vmevents; } ;


 unsigned long atomic_long_read (int *) ;

__attribute__((used)) static unsigned long memcg_events(struct mem_cgroup *memcg, int event)
{
 return atomic_long_read(&memcg->vmevents[event]);
}
