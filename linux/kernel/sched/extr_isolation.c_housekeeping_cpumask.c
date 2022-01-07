
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef enum hk_flags { ____Placeholder_hk_flags } hk_flags ;


 struct cpumask const* cpu_possible_mask ;
 int housekeeping_flags ;
 struct cpumask const* housekeeping_mask ;
 int housekeeping_overridden ;
 scalar_t__ static_branch_unlikely (int *) ;

const struct cpumask *housekeeping_cpumask(enum hk_flags flags)
{
 if (static_branch_unlikely(&housekeeping_overridden))
  if (housekeeping_flags & flags)
   return housekeeping_mask;
 return cpu_possible_mask;
}
