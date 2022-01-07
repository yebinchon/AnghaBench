
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct mem_cgroup* mem_cgroup; } ;
struct cgroup_subsys_state {int dummy; } ;
struct mem_cgroup {struct cgroup_subsys_state css; } ;


 int cgroup_subsys_on_dfl (int ) ;
 int memory_cgrp_subsys ;
 struct mem_cgroup* root_mem_cgroup ;

struct cgroup_subsys_state *mem_cgroup_css_from_page(struct page *page)
{
 struct mem_cgroup *memcg;

 memcg = page->mem_cgroup;

 if (!memcg || !cgroup_subsys_on_dfl(memory_cgrp_subsys))
  memcg = root_mem_cgroup;

 return &memcg->css;
}
