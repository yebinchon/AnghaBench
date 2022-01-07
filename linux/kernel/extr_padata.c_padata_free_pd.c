
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbcpu; int pcpu; } ;
struct parallel_data {int squeue; int pqueue; TYPE_1__ cpumask; } ;


 int free_cpumask_var (int ) ;
 int free_percpu (int ) ;
 int kfree (struct parallel_data*) ;

__attribute__((used)) static void padata_free_pd(struct parallel_data *pd)
{
 free_cpumask_var(pd->cpumask.pcpu);
 free_cpumask_var(pd->cpumask.cbcpu);
 free_percpu(pd->pqueue);
 free_percpu(pd->squeue);
 kfree(pd);
}
