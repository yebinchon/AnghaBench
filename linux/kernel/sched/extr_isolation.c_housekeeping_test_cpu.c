
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hk_flags { ____Placeholder_hk_flags } hk_flags ;


 int cpumask_test_cpu (int,int ) ;
 int housekeeping_flags ;
 int housekeeping_mask ;
 int housekeeping_overridden ;
 scalar_t__ static_branch_unlikely (int *) ;

bool housekeeping_test_cpu(int cpu, enum hk_flags flags)
{
 if (static_branch_unlikely(&housekeeping_overridden))
  if (housekeeping_flags & flags)
   return cpumask_test_cpu(cpu, housekeeping_mask);
 return 1;
}
