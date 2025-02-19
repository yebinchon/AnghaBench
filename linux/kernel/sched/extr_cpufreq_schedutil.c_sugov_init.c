
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct sugov_tunables {TYPE_2__ attr_set; int rate_limit_us; } ;
struct sugov_policy {struct sugov_tunables* tunables; int tunables_hook; } ;
struct cpufreq_policy {struct sugov_policy* governor_data; } ;
struct TYPE_3__ {int name; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int ) ;
 int cpufreq_disable_fast_switch (struct cpufreq_policy*) ;
 int cpufreq_enable_fast_switch (struct cpufreq_policy*) ;
 int cpufreq_policy_transition_delay_us (struct cpufreq_policy*) ;
 int get_governor_parent_kobj (struct cpufreq_policy*) ;
 struct sugov_tunables* global_tunables ;
 int global_tunables_lock ;
 int gov_attr_set_get (TYPE_2__*,int *) ;
 int have_governor_per_policy () ;
 int kobject_init_and_add (int *,int *,int ,char*,int ) ;
 int kobject_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 TYPE_1__ schedutil_gov ;
 int sugov_kthread_create (struct sugov_policy*) ;
 int sugov_kthread_stop (struct sugov_policy*) ;
 struct sugov_policy* sugov_policy_alloc (struct cpufreq_policy*) ;
 int sugov_policy_free (struct sugov_policy*) ;
 struct sugov_tunables* sugov_tunables_alloc (struct sugov_policy*) ;
 int sugov_tunables_free (struct sugov_tunables*) ;
 int sugov_tunables_ktype ;

__attribute__((used)) static int sugov_init(struct cpufreq_policy *policy)
{
 struct sugov_policy *sg_policy;
 struct sugov_tunables *tunables;
 int ret = 0;


 if (policy->governor_data)
  return -EBUSY;

 cpufreq_enable_fast_switch(policy);

 sg_policy = sugov_policy_alloc(policy);
 if (!sg_policy) {
  ret = -ENOMEM;
  goto disable_fast_switch;
 }

 ret = sugov_kthread_create(sg_policy);
 if (ret)
  goto free_sg_policy;

 mutex_lock(&global_tunables_lock);

 if (global_tunables) {
  if (WARN_ON(have_governor_per_policy())) {
   ret = -EINVAL;
   goto stop_kthread;
  }
  policy->governor_data = sg_policy;
  sg_policy->tunables = global_tunables;

  gov_attr_set_get(&global_tunables->attr_set, &sg_policy->tunables_hook);
  goto out;
 }

 tunables = sugov_tunables_alloc(sg_policy);
 if (!tunables) {
  ret = -ENOMEM;
  goto stop_kthread;
 }

 tunables->rate_limit_us = cpufreq_policy_transition_delay_us(policy);

 policy->governor_data = sg_policy;
 sg_policy->tunables = tunables;

 ret = kobject_init_and_add(&tunables->attr_set.kobj, &sugov_tunables_ktype,
       get_governor_parent_kobj(policy), "%s",
       schedutil_gov.name);
 if (ret)
  goto fail;

out:
 mutex_unlock(&global_tunables_lock);
 return 0;

fail:
 kobject_put(&tunables->attr_set.kobj);
 policy->governor_data = ((void*)0);
 sugov_tunables_free(tunables);

stop_kthread:
 sugov_kthread_stop(sg_policy);
 mutex_unlock(&global_tunables_lock);

free_sg_policy:
 sugov_policy_free(sg_policy);

disable_fast_switch:
 cpufreq_disable_fast_switch(policy);

 pr_err("initialization failed (error %d)\n", ret);
 return ret;
}
