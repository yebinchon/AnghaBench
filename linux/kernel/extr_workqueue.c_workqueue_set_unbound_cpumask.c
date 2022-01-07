
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_var_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int apply_wqattrs_lock () ;
 int apply_wqattrs_unlock () ;
 int cpu_possible_mask ;
 int cpumask_and (int ,int ,int ) ;
 int cpumask_copy (int ,int ) ;
 int cpumask_empty (int ) ;
 int free_cpumask_var (int ) ;
 int workqueue_apply_unbound_cpumask () ;
 int wq_unbound_cpumask ;
 int zalloc_cpumask_var (int *,int ) ;

int workqueue_set_unbound_cpumask(cpumask_var_t cpumask)
{
 int ret = -EINVAL;
 cpumask_var_t saved_cpumask;

 if (!zalloc_cpumask_var(&saved_cpumask, GFP_KERNEL))
  return -ENOMEM;





 cpumask_and(cpumask, cpumask, cpu_possible_mask);
 if (!cpumask_empty(cpumask)) {
  apply_wqattrs_lock();


  cpumask_copy(saved_cpumask, wq_unbound_cpumask);


  cpumask_copy(wq_unbound_cpumask, cpumask);
  ret = workqueue_apply_unbound_cpumask();


  if (ret < 0)
   cpumask_copy(wq_unbound_cpumask, saved_cpumask);

  apply_wqattrs_unlock();
 }

 free_cpumask_var(saved_cpumask);
 return ret;
}
