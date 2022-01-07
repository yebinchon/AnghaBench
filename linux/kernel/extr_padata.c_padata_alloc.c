
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parallel_data {int dummy; } ;
struct TYPE_2__ {int cbcpu; int pcpu; } ;
struct padata_instance {void* parallel_wq; void* serial_wq; TYPE_1__ cpumask; int node; int lock; int kobj; int cpumask_change_notifier; scalar_t__ flags; int pd; } ;
struct cpumask {int dummy; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int GFP_KERNEL ;
 int WQ_CPU_INTENSIVE ;
 int WQ_MEM_RECLAIM ;
 int WQ_UNBOUND ;
 int alloc_cpumask_var (int *,int ) ;
 void* alloc_workqueue (char*,int,int,char const*) ;
 int cpuhp_state_add_instance_nocalls_cpuslocked (int ,int *) ;
 int cpumask_copy (int ,struct cpumask const*) ;
 int destroy_workqueue (void*) ;
 int free_cpumask_var (int ) ;
 int get_online_cpus () ;
 int hp_online ;
 int kfree (struct padata_instance*) ;
 int kobject_init (int *,int *) ;
 struct padata_instance* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct parallel_data* padata_alloc_pd (struct padata_instance*,struct cpumask const*,struct cpumask const*) ;
 int padata_attr_type ;
 int padata_validate_cpumask (struct padata_instance*,struct cpumask const*) ;
 int put_online_cpus () ;
 int rcu_assign_pointer (int ,struct parallel_data*) ;

__attribute__((used)) static struct padata_instance *padata_alloc(const char *name,
         const struct cpumask *pcpumask,
         const struct cpumask *cbcpumask)
{
 struct padata_instance *pinst;
 struct parallel_data *pd = ((void*)0);

 pinst = kzalloc(sizeof(struct padata_instance), GFP_KERNEL);
 if (!pinst)
  goto err;

 pinst->parallel_wq = alloc_workqueue("%s_parallel", WQ_UNBOUND, 0,
          name);
 if (!pinst->parallel_wq)
  goto err_free_inst;

 get_online_cpus();

 pinst->serial_wq = alloc_workqueue("%s_serial", WQ_MEM_RECLAIM |
        WQ_CPU_INTENSIVE, 1, name);
 if (!pinst->serial_wq)
  goto err_put_cpus;

 if (!alloc_cpumask_var(&pinst->cpumask.pcpu, GFP_KERNEL))
  goto err_free_serial_wq;
 if (!alloc_cpumask_var(&pinst->cpumask.cbcpu, GFP_KERNEL)) {
  free_cpumask_var(pinst->cpumask.pcpu);
  goto err_free_serial_wq;
 }
 if (!padata_validate_cpumask(pinst, pcpumask) ||
     !padata_validate_cpumask(pinst, cbcpumask))
  goto err_free_masks;

 pd = padata_alloc_pd(pinst, pcpumask, cbcpumask);
 if (!pd)
  goto err_free_masks;

 rcu_assign_pointer(pinst->pd, pd);

 cpumask_copy(pinst->cpumask.pcpu, pcpumask);
 cpumask_copy(pinst->cpumask.cbcpu, cbcpumask);

 pinst->flags = 0;

 BLOCKING_INIT_NOTIFIER_HEAD(&pinst->cpumask_change_notifier);
 kobject_init(&pinst->kobj, &padata_attr_type);
 mutex_init(&pinst->lock);





 put_online_cpus();

 return pinst;

err_free_masks:
 free_cpumask_var(pinst->cpumask.pcpu);
 free_cpumask_var(pinst->cpumask.cbcpu);
err_free_serial_wq:
 destroy_workqueue(pinst->serial_wq);
err_put_cpus:
 put_online_cpus();
 destroy_workqueue(pinst->parallel_wq);
err_free_inst:
 kfree(pinst);
err:
 return ((void*)0);
}
