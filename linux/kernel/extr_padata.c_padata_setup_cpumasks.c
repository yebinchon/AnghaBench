
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct workqueue_attrs {int cpumask; } ;
struct TYPE_4__ {int pcpu; int cbcpu; } ;
struct parallel_data {TYPE_2__ cpumask; TYPE_1__* pinst; } ;
struct cpumask {int dummy; } ;
struct TYPE_3__ {int parallel_wq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_cpumask_var (int *,int ) ;
 struct workqueue_attrs* alloc_workqueue_attrs () ;
 int apply_workqueue_attrs (int ,struct workqueue_attrs*) ;
 int cpu_online_mask ;
 int cpumask_and (int ,struct cpumask const*,int ) ;
 int cpumask_copy (int ,int ) ;
 int free_cpumask_var (int ) ;
 int free_workqueue_attrs (struct workqueue_attrs*) ;

__attribute__((used)) static int padata_setup_cpumasks(struct parallel_data *pd,
     const struct cpumask *pcpumask,
     const struct cpumask *cbcpumask)
{
 struct workqueue_attrs *attrs;
 int err = -ENOMEM;

 if (!alloc_cpumask_var(&pd->cpumask.pcpu, GFP_KERNEL))
  goto out;
 cpumask_and(pd->cpumask.pcpu, pcpumask, cpu_online_mask);

 if (!alloc_cpumask_var(&pd->cpumask.cbcpu, GFP_KERNEL))
  goto free_pcpu_mask;
 cpumask_and(pd->cpumask.cbcpu, cbcpumask, cpu_online_mask);

 attrs = alloc_workqueue_attrs();
 if (!attrs)
  goto free_cbcpu_mask;


 cpumask_copy(attrs->cpumask, pd->cpumask.pcpu);
 err = apply_workqueue_attrs(pd->pinst->parallel_wq, attrs);
 free_workqueue_attrs(attrs);
 if (err < 0)
  goto free_cbcpu_mask;

 return 0;

free_cbcpu_mask:
 free_cpumask_var(pd->cpumask.cbcpu);
free_pcpu_mask:
 free_cpumask_var(pd->cpumask.pcpu);
out:
 return err;
}
