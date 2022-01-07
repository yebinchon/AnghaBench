
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_domain {unsigned long flags; TYPE_1__* groups; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 unsigned long SD_ASYM_CPUCAPACITY ;
 unsigned long SD_BALANCE_EXEC ;
 unsigned long SD_BALANCE_FORK ;
 unsigned long SD_BALANCE_NEWIDLE ;
 unsigned long SD_LOAD_BALANCE ;
 unsigned long SD_PREFER_SIBLING ;
 unsigned long SD_SERIALIZE ;
 unsigned long SD_SHARE_CPUCAPACITY ;
 unsigned long SD_SHARE_PKG_RESOURCES ;
 unsigned long SD_SHARE_POWERDOMAIN ;
 int cpumask_equal (int ,int ) ;
 int nr_node_ids ;
 int sched_domain_span (struct sched_domain*) ;
 scalar_t__ sd_degenerate (struct sched_domain*) ;

__attribute__((used)) static int
sd_parent_degenerate(struct sched_domain *sd, struct sched_domain *parent)
{
 unsigned long cflags = sd->flags, pflags = parent->flags;

 if (sd_degenerate(parent))
  return 1;

 if (!cpumask_equal(sched_domain_span(sd), sched_domain_span(parent)))
  return 0;


 if (parent->groups == parent->groups->next) {
  pflags &= ~(SD_LOAD_BALANCE |
    SD_BALANCE_NEWIDLE |
    SD_BALANCE_FORK |
    SD_BALANCE_EXEC |
    SD_ASYM_CPUCAPACITY |
    SD_SHARE_CPUCAPACITY |
    SD_SHARE_PKG_RESOURCES |
    SD_PREFER_SIBLING |
    SD_SHARE_POWERDOMAIN);
  if (nr_node_ids == 1)
   pflags &= ~SD_SERIALIZE;
 }
 if (~cflags & pflags)
  return 0;

 return 1;
}
