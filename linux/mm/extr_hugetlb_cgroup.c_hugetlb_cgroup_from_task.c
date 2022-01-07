
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct hugetlb_cgroup {int dummy; } ;


 struct hugetlb_cgroup* hugetlb_cgroup_from_css (int ) ;
 int hugetlb_cgrp_id ;
 int task_css (struct task_struct*,int ) ;

__attribute__((used)) static inline
struct hugetlb_cgroup *hugetlb_cgroup_from_task(struct task_struct *task)
{
 return hugetlb_cgroup_from_css(task_css(task, hugetlb_cgrp_id));
}
