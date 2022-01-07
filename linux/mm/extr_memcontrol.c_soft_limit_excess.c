
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int soft_limit; int memory; } ;


 unsigned long READ_ONCE (int ) ;
 unsigned long page_counter_read (int *) ;

__attribute__((used)) static unsigned long soft_limit_excess(struct mem_cgroup *memcg)
{
 unsigned long nr_pages = page_counter_read(&memcg->memory);
 unsigned long soft_limit = READ_ONCE(memcg->soft_limit);
 unsigned long excess = 0;

 if (nr_pages > soft_limit)
  excess = nr_pages - soft_limit;

 return excess;
}
