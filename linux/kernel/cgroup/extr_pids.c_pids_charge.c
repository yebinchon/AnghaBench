
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pids_cgroup {int counter; } ;


 int atomic64_add (int,int *) ;
 struct pids_cgroup* parent_pids (struct pids_cgroup*) ;

__attribute__((used)) static void pids_charge(struct pids_cgroup *pids, int num)
{
 struct pids_cgroup *p;

 for (p = pids; parent_pids(p); p = parent_pids(p))
  atomic64_add(num, &p->counter);
}
