
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpudl {int elements; int free_cpus; } ;


 int free_cpumask_var (int ) ;
 int kfree (int ) ;

void cpudl_cleanup(struct cpudl *cp)
{
 free_cpumask_var(cp->free_cpus);
 kfree(cp->elements);
}
