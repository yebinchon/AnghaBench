
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cgroup {int flags; } ;
struct TYPE_5__ {int frozen; int jobctl; TYPE_1__* sighand; } ;
struct TYPE_4__ {int siglock; } ;


 int CGRP_FREEZE ;
 int JOBCTL_TRAP_FREEZE ;
 int TIF_SIGPENDING ;
 int WARN_ON_ONCE (int) ;
 int cgroup_dec_frozen_cnt (struct cgroup*) ;
 int cgroup_update_frozen (struct cgroup*) ;
 int css_set_lock ;
 TYPE_2__* current ;
 int set_thread_flag (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 struct cgroup* task_dfl_cgroup (TYPE_2__*) ;
 int test_bit (int ,int *) ;

void cgroup_leave_frozen(bool always_leave)
{
 struct cgroup *cgrp;

 spin_lock_irq(&css_set_lock);
 cgrp = task_dfl_cgroup(current);
 if (always_leave || !test_bit(CGRP_FREEZE, &cgrp->flags)) {
  cgroup_dec_frozen_cnt(cgrp);
  cgroup_update_frozen(cgrp);
  WARN_ON_ONCE(!current->frozen);
  current->frozen = 0;
 } else if (!(current->jobctl & JOBCTL_TRAP_FREEZE)) {
  spin_lock(&current->sighand->siglock);
  current->jobctl |= JOBCTL_TRAP_FREEZE;
  set_thread_flag(TIF_SIGPENDING);
  spin_unlock(&current->sighand->siglock);
 }
 spin_unlock_irq(&css_set_lock);
}
