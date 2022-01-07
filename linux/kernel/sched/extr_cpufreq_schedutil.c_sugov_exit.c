
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_tunables {int attr_set; } ;
struct sugov_policy {int tunables_hook; struct sugov_tunables* tunables; } ;
struct cpufreq_policy {struct sugov_policy* governor_data; } ;


 int cpufreq_disable_fast_switch (struct cpufreq_policy*) ;
 int global_tunables_lock ;
 unsigned int gov_attr_set_put (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sugov_kthread_stop (struct sugov_policy*) ;
 int sugov_policy_free (struct sugov_policy*) ;
 int sugov_tunables_free (struct sugov_tunables*) ;

__attribute__((used)) static void sugov_exit(struct cpufreq_policy *policy)
{
 struct sugov_policy *sg_policy = policy->governor_data;
 struct sugov_tunables *tunables = sg_policy->tunables;
 unsigned int count;

 mutex_lock(&global_tunables_lock);

 count = gov_attr_set_put(&tunables->attr_set, &sg_policy->tunables_hook);
 policy->governor_data = ((void*)0);
 if (!count)
  sugov_tunables_free(tunables);

 mutex_unlock(&global_tunables_lock);

 sugov_kthread_stop(sg_policy);
 sugov_policy_free(sg_policy);
 cpufreq_disable_fast_switch(policy);
}
