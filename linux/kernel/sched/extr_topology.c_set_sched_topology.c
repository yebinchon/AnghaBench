
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_domain_topology_level {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int ) ;
 struct sched_domain_topology_level* sched_domain_topology ;
 int sched_smp_initialized ;

void set_sched_topology(struct sched_domain_topology_level *tl)
{
 if (WARN_ON_ONCE(sched_smp_initialized))
  return;

 sched_domain_topology = tl;
}
