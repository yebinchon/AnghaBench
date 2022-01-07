
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {int css; } ;


 int css_tryget_online (int *) ;
 scalar_t__ mem_cgroup_disabled () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct mem_cgroup* root_mem_cgroup ;

struct mem_cgroup *get_mem_cgroup_from_page(struct page *page)
{
 struct mem_cgroup *memcg = page->mem_cgroup;

 if (mem_cgroup_disabled())
  return ((void*)0);

 rcu_read_lock();
 if (!memcg || !css_tryget_online(&memcg->css))
  memcg = root_mem_cgroup;
 rcu_read_unlock();
 return memcg;
}
