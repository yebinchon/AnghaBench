
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_policy {int update_lock; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {int dummy; } ;


 int GFP_KERNEL ;
 struct sugov_policy* kzalloc (int,int ) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static struct sugov_policy *sugov_policy_alloc(struct cpufreq_policy *policy)
{
 struct sugov_policy *sg_policy;

 sg_policy = kzalloc(sizeof(*sg_policy), GFP_KERNEL);
 if (!sg_policy)
  return ((void*)0);

 sg_policy->policy = policy;
 raw_spin_lock_init(&sg_policy->update_lock);
 return sg_policy;
}
