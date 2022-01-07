
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_domain {int rcu; } ;


 int call_rcu (int *,int ) ;
 int destroy_sched_domains_rcu ;

__attribute__((used)) static void destroy_sched_domains(struct sched_domain *sd)
{
 if (sd)
  call_rcu(&sd->rcu, destroy_sched_domains_rcu);
}
