
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 int __this_cpu_write (int ,unsigned int) ;
 int nop_txn_flags ;
 int perf_pmu_disable (struct pmu*) ;

__attribute__((used)) static void perf_pmu_start_txn(struct pmu *pmu, unsigned int flags)
{
 __this_cpu_write(nop_txn_flags, flags);

 if (flags & ~PERF_PMU_TXN_ADD)
  return;

 perf_pmu_disable(pmu);
}
