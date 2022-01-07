
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cpuacct_usage {int * usages; } ;
struct cpuacct {int cpuusage; } ;
struct TYPE_2__ {int lock; } ;


 int CPUACCT_STAT_NSTATS ;
 TYPE_1__* cpu_rq (int) ;
 struct cpuacct_usage* per_cpu_ptr (int ,int) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;

__attribute__((used)) static void cpuacct_cpuusage_write(struct cpuacct *ca, int cpu, u64 val)
{
 struct cpuacct_usage *cpuusage = per_cpu_ptr(ca->cpuusage, cpu);
 int i;





 raw_spin_lock_irq(&cpu_rq(cpu)->lock);


 for (i = 0; i < CPUACCT_STAT_NSTATS; i++)
  cpuusage->usages[i] = val;


 raw_spin_unlock_irq(&cpu_rq(cpu)->lock);

}
