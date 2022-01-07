
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cgroup_cls_state {int dummy; } ;


 struct cgroup_cls_state* css_cls_state (int ) ;
 int net_cls_cgrp_id ;
 int rcu_read_lock_bh_held () ;
 int task_css_check (struct task_struct*,int ,int ) ;

struct cgroup_cls_state *task_cls_state(struct task_struct *p)
{
 return css_cls_state(task_css_check(p, net_cls_cgrp_id,
         rcu_read_lock_bh_held()));
}
