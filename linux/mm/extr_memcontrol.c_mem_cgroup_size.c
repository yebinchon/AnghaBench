
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int memory; } ;


 unsigned long page_counter_read (int *) ;

unsigned long mem_cgroup_size(struct mem_cgroup *memcg)
{
 return page_counter_read(&memcg->memory);
}
