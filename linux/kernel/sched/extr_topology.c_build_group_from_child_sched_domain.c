
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_group {int ref; } ;
struct sched_domain {struct sched_domain* child; } ;
struct cpumask {int dummy; } ;


 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int cpu_to_node (int) ;
 int cpumask_copy (struct cpumask*,int ) ;
 scalar_t__ cpumask_size () ;
 struct sched_group* kzalloc_node (scalar_t__,int ,int ) ;
 int sched_domain_span (struct sched_domain*) ;
 struct cpumask* sched_group_span (struct sched_group*) ;

__attribute__((used)) static struct sched_group *
build_group_from_child_sched_domain(struct sched_domain *sd, int cpu)
{
 struct sched_group *sg;
 struct cpumask *sg_span;

 sg = kzalloc_node(sizeof(struct sched_group) + cpumask_size(),
   GFP_KERNEL, cpu_to_node(cpu));

 if (!sg)
  return ((void*)0);

 sg_span = sched_group_span(sg);
 if (sd->child)
  cpumask_copy(sg_span, sched_domain_span(sd->child));
 else
  cpumask_copy(sg_span, sched_domain_span(sd));

 atomic_inc(&sg->ref);
 return sg;
}
