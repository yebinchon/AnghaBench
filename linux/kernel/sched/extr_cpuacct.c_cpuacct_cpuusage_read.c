
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct cpuacct_usage {scalar_t__* usages; } ;
struct cpuacct {int cpuusage; } ;
typedef enum cpuacct_stat_index { ____Placeholder_cpuacct_stat_index } cpuacct_stat_index ;
struct TYPE_2__ {int lock; } ;


 int BUG_ON (int) ;
 int CPUACCT_STAT_NSTATS ;
 TYPE_1__* cpu_rq (int) ;
 struct cpuacct_usage* per_cpu_ptr (int ,int) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;

__attribute__((used)) static u64 cpuacct_cpuusage_read(struct cpuacct *ca, int cpu,
     enum cpuacct_stat_index index)
{
 struct cpuacct_usage *cpuusage = per_cpu_ptr(ca->cpuusage, cpu);
 u64 data;





 BUG_ON(index > CPUACCT_STAT_NSTATS);





 raw_spin_lock_irq(&cpu_rq(cpu)->lock);


 if (index == CPUACCT_STAT_NSTATS) {
  int i = 0;

  data = 0;
  for (i = 0; i < CPUACCT_STAT_NSTATS; i++)
   data += cpuusage->usages[i];
 } else {
  data = cpuusage->usages[index];
 }


 raw_spin_unlock_irq(&cpu_rq(cpu)->lock);


 return data;
}
