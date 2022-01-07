
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cpuacct {int dummy; } ;


 int cpuacct_cgrp_id ;
 struct cpuacct* css_ca (int ) ;
 int task_css (struct task_struct*,int ) ;

__attribute__((used)) static inline struct cpuacct *task_ca(struct task_struct *tsk)
{
 return css_ca(task_css(tsk, cpuacct_cgrp_id));
}
