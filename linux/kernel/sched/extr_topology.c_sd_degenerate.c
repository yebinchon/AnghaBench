
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_domain {int flags; TYPE_1__* groups; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int SD_ASYM_CPUCAPACITY ;
 int SD_BALANCE_EXEC ;
 int SD_BALANCE_FORK ;
 int SD_BALANCE_NEWIDLE ;
 int SD_LOAD_BALANCE ;
 int SD_SHARE_CPUCAPACITY ;
 int SD_SHARE_PKG_RESOURCES ;
 int SD_SHARE_POWERDOMAIN ;
 int SD_WAKE_AFFINE ;
 int cpumask_weight (int ) ;
 int sched_domain_span (struct sched_domain*) ;

__attribute__((used)) static int sd_degenerate(struct sched_domain *sd)
{
 if (cpumask_weight(sched_domain_span(sd)) == 1)
  return 1;


 if (sd->flags & (SD_LOAD_BALANCE |
    SD_BALANCE_NEWIDLE |
    SD_BALANCE_FORK |
    SD_BALANCE_EXEC |
    SD_SHARE_CPUCAPACITY |
    SD_ASYM_CPUCAPACITY |
    SD_SHARE_PKG_RESOURCES |
    SD_SHARE_POWERDOMAIN)) {
  if (sd->groups != sd->groups->next)
   return 0;
 }


 if (sd->flags & (SD_WAKE_AFFINE))
  return 0;

 return 1;
}
