
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int cpus_allowed; int flags; } ;
typedef int cpuset_flagbits_t ;


 int ENOMEM ;
 struct cpuset* alloc_trial_cpuset (struct cpuset*) ;
 int callback_lock ;
 int clear_bit (int ,int *) ;
 int cpumask_empty (int ) ;
 int free_cpuset (struct cpuset*) ;
 scalar_t__ is_sched_load_balance (struct cpuset*) ;
 scalar_t__ is_spread_page (struct cpuset*) ;
 scalar_t__ is_spread_slab (struct cpuset*) ;
 int rebuild_sched_domains_locked () ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_tasks_flags (struct cpuset*) ;
 int validate_change (struct cpuset*,struct cpuset*) ;

__attribute__((used)) static int update_flag(cpuset_flagbits_t bit, struct cpuset *cs,
         int turning_on)
{
 struct cpuset *trialcs;
 int balance_flag_changed;
 int spread_flag_changed;
 int err;

 trialcs = alloc_trial_cpuset(cs);
 if (!trialcs)
  return -ENOMEM;

 if (turning_on)
  set_bit(bit, &trialcs->flags);
 else
  clear_bit(bit, &trialcs->flags);

 err = validate_change(cs, trialcs);
 if (err < 0)
  goto out;

 balance_flag_changed = (is_sched_load_balance(cs) !=
    is_sched_load_balance(trialcs));

 spread_flag_changed = ((is_spread_slab(cs) != is_spread_slab(trialcs))
   || (is_spread_page(cs) != is_spread_page(trialcs)));

 spin_lock_irq(&callback_lock);
 cs->flags = trialcs->flags;
 spin_unlock_irq(&callback_lock);

 if (!cpumask_empty(trialcs->cpus_allowed) && balance_flag_changed)
  rebuild_sched_domains_locked();

 if (spread_flag_changed)
  update_tasks_flags(cs);
out:
 free_cpuset(trialcs);
 return err;
}
