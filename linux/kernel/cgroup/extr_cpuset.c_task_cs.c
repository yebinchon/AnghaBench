
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cpuset {int dummy; } ;


 int cpuset_cgrp_id ;
 struct cpuset* css_cs (int ) ;
 int task_css (struct task_struct*,int ) ;

__attribute__((used)) static inline struct cpuset *task_cs(struct task_struct *task)
{
 return css_cs(task_css(task, cpuset_cgrp_id));
}
