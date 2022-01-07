
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 unsigned int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int ) ;
 int nop_txn_flags ;
 int perf_pmu_enable (struct pmu*) ;

__attribute__((used)) static int perf_pmu_commit_txn(struct pmu *pmu)
{
 unsigned int flags = __this_cpu_read(nop_txn_flags);

 __this_cpu_write(nop_txn_flags, 0);

 if (flags & ~PERF_PMU_TXN_ADD)
  return 0;

 perf_pmu_enable(pmu);
 return 0;
}
