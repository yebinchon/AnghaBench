
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int css; int memsw; int memory; } ;


 int css_put_many (int *,unsigned int) ;
 scalar_t__ do_memsw_account () ;
 scalar_t__ mem_cgroup_is_root (struct mem_cgroup*) ;
 int page_counter_uncharge (int *,unsigned int) ;

__attribute__((used)) static void cancel_charge(struct mem_cgroup *memcg, unsigned int nr_pages)
{
 if (mem_cgroup_is_root(memcg))
  return;

 page_counter_uncharge(&memcg->memory, nr_pages);
 if (do_memsw_account())
  page_counter_uncharge(&memcg->memsw, nr_pages);

 css_put_many(&memcg->css, nr_pages);
}
