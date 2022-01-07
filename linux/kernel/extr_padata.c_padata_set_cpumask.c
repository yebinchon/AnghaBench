
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cpumask* pcpu; struct cpumask* cbcpu; } ;
struct padata_instance {int lock; TYPE_1__ cpumask; } ;
struct cpumask {int dummy; } ;
typedef struct cpumask* cpumask_var_t ;


 int EINVAL ;


 int __padata_set_cpumasks (struct padata_instance*,struct cpumask*,struct cpumask*) ;
 int get_online_cpus () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_online_cpus () ;

int padata_set_cpumask(struct padata_instance *pinst, int cpumask_type,
         cpumask_var_t cpumask)
{
 struct cpumask *serial_mask, *parallel_mask;
 int err = -EINVAL;

 mutex_lock(&pinst->lock);
 get_online_cpus();

 switch (cpumask_type) {
 case 129:
  serial_mask = pinst->cpumask.cbcpu;
  parallel_mask = cpumask;
  break;
 case 128:
  parallel_mask = pinst->cpumask.pcpu;
  serial_mask = cpumask;
  break;
 default:
   goto out;
 }

 err = __padata_set_cpumasks(pinst, parallel_mask, serial_mask);

out:
 put_online_cpus();
 mutex_unlock(&pinst->lock);

 return err;
}
