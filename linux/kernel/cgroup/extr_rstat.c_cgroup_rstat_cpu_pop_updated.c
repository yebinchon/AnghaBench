
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_rstat_cpu {struct cgroup* updated_next; struct cgroup* updated_children; } ;
struct cgroup {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 struct cgroup_rstat_cpu* cgroup_rstat_cpu (struct cgroup*,int) ;
 int smp_mb () ;

__attribute__((used)) static struct cgroup *cgroup_rstat_cpu_pop_updated(struct cgroup *pos,
         struct cgroup *root, int cpu)
{
 struct cgroup_rstat_cpu *rstatc;

 if (pos == root)
  return ((void*)0);





 if (!pos)
  pos = root;
 else
  pos = cgroup_parent(pos);


 while (1) {
  rstatc = cgroup_rstat_cpu(pos, cpu);
  if (rstatc->updated_children == pos)
   break;
  pos = rstatc->updated_children;
 }







 if (rstatc->updated_next) {
  struct cgroup *parent = cgroup_parent(pos);
  struct cgroup_rstat_cpu *prstatc = cgroup_rstat_cpu(parent, cpu);
  struct cgroup_rstat_cpu *nrstatc;
  struct cgroup **nextp;

  nextp = &prstatc->updated_children;
  while (1) {
   nrstatc = cgroup_rstat_cpu(*nextp, cpu);
   if (*nextp == pos)
    break;

   WARN_ON_ONCE(*nextp == parent);
   nextp = &nrstatc->updated_next;
  }

  *nextp = rstatc->updated_next;
  rstatc->updated_next = ((void*)0);






  smp_mb();

  return pos;
 }


 return ((void*)0);
}
