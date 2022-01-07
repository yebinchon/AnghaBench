
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcpu; } ;
struct parallel_data {TYPE_1__ cpumask; } ;


 unsigned int cpumask_weight (int ) ;
 int padata_index_to_cpu (struct parallel_data*,int) ;

__attribute__((used)) static int padata_cpu_hash(struct parallel_data *pd, unsigned int seq_nr)
{




 int cpu_index = seq_nr % cpumask_weight(pd->cpumask.pcpu);

 return padata_index_to_cpu(pd, cpu_index);
}
