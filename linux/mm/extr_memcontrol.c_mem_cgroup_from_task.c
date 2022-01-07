
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 struct mem_cgroup* mem_cgroup_from_css (int ) ;
 int memory_cgrp_id ;
 int task_css (struct task_struct*,int ) ;
 scalar_t__ unlikely (int) ;

struct mem_cgroup *mem_cgroup_from_task(struct task_struct *p)
{





 if (unlikely(!p))
  return ((void*)0);

 return mem_cgroup_from_css(task_css(p, memory_cgrp_id));
}
