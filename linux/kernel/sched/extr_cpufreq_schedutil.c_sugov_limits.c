
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_policy {int limits_changed; int work_lock; } ;
struct cpufreq_policy {int fast_switch_enabled; struct sugov_policy* governor_data; } ;


 int cpufreq_policy_apply_limits (struct cpufreq_policy*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void sugov_limits(struct cpufreq_policy *policy)
{
 struct sugov_policy *sg_policy = policy->governor_data;

 if (!policy->fast_switch_enabled) {
  mutex_lock(&sg_policy->work_lock);
  cpufreq_policy_apply_limits(policy);
  mutex_unlock(&sg_policy->work_lock);
 }

 sg_policy->limits_changed = 1;
}
