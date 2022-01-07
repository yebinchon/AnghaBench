
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int css; } ;


 int css_put (int *) ;
 struct mem_cgroup* root_mem_cgroup ;

void mem_cgroup_iter_break(struct mem_cgroup *root,
      struct mem_cgroup *prev)
{
 if (!root)
  root = root_mem_cgroup;
 if (prev && prev != root)
  css_put(&prev->css);
}
