
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_data {int sgc; int sg; int sds; int sd; } ;
struct sched_domain {int ref; struct sd_data* private; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_read (int *) ;
 struct sched_domain** per_cpu_ptr (int ,int) ;

__attribute__((used)) static void claim_allocations(int cpu, struct sched_domain *sd)
{
 struct sd_data *sdd = sd->private;

 WARN_ON_ONCE(*per_cpu_ptr(sdd->sd, cpu) != sd);
 *per_cpu_ptr(sdd->sd, cpu) = ((void*)0);

 if (atomic_read(&(*per_cpu_ptr(sdd->sds, cpu))->ref))
  *per_cpu_ptr(sdd->sds, cpu) = ((void*)0);

 if (atomic_read(&(*per_cpu_ptr(sdd->sg, cpu))->ref))
  *per_cpu_ptr(sdd->sg, cpu) = ((void*)0);

 if (atomic_read(&(*per_cpu_ptr(sdd->sgc, cpu))->ref))
  *per_cpu_ptr(sdd->sgc, cpu) = ((void*)0);
}
