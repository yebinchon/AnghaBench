
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_domain {int flags; struct sched_domain* child; struct sched_domain* parent; } ;
struct rq {struct sched_domain* sd; } ;
struct root_domain {int dummy; } ;


 int SD_PREFER_SIBLING ;
 struct rq* cpu_rq (int) ;
 int destroy_sched_domain (struct sched_domain*) ;
 int destroy_sched_domains (struct sched_domain*) ;
 int dirty_sched_domain_sysctl (int) ;
 int rcu_assign_pointer (struct sched_domain*,struct sched_domain*) ;
 int rq_attach_root (struct rq*,struct root_domain*) ;
 int sched_domain_debug (struct sched_domain*,int) ;
 scalar_t__ sd_degenerate (struct sched_domain*) ;
 scalar_t__ sd_parent_degenerate (struct sched_domain*,struct sched_domain*) ;
 int update_top_cache_domain (int) ;

__attribute__((used)) static void
cpu_attach_domain(struct sched_domain *sd, struct root_domain *rd, int cpu)
{
 struct rq *rq = cpu_rq(cpu);
 struct sched_domain *tmp;


 for (tmp = sd; tmp; ) {
  struct sched_domain *parent = tmp->parent;
  if (!parent)
   break;

  if (sd_parent_degenerate(tmp, parent)) {
   tmp->parent = parent->parent;
   if (parent->parent)
    parent->parent->child = tmp;





   if (parent->flags & SD_PREFER_SIBLING)
    tmp->flags |= SD_PREFER_SIBLING;
   destroy_sched_domain(parent);
  } else
   tmp = tmp->parent;
 }

 if (sd && sd_degenerate(sd)) {
  tmp = sd;
  sd = sd->parent;
  destroy_sched_domain(tmp);
  if (sd)
   sd->child = ((void*)0);
 }

 sched_domain_debug(sd, cpu);

 rq_attach_root(rq, rd);
 tmp = rq->sd;
 rcu_assign_pointer(rq->sd, sd);
 dirty_sched_domain_sysctl(cpu);
 destroy_sched_domains(tmp);

 update_top_cache_domain(cpu);
}
