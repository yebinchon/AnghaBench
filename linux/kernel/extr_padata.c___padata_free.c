
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbcpu; int pcpu; } ;
struct padata_instance {int parallel_wq; int serial_wq; TYPE_1__ cpumask; int pd; int node; } ;


 int cpuhp_state_remove_instance_nocalls (int ,int *) ;
 int destroy_workqueue (int ) ;
 int free_cpumask_var (int ) ;
 int hp_online ;
 int kfree (struct padata_instance*) ;
 int padata_free_pd (int ) ;
 int padata_stop (struct padata_instance*) ;

__attribute__((used)) static void __padata_free(struct padata_instance *pinst)
{




 padata_stop(pinst);
 padata_free_pd(pinst->pd);
 free_cpumask_var(pinst->cpumask.pcpu);
 free_cpumask_var(pinst->cpumask.cbcpu);
 destroy_workqueue(pinst->serial_wq);
 destroy_workqueue(pinst->parallel_wq);
 kfree(pinst);
}
