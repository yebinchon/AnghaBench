
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pids_cgroup {int dummy; } ;


 struct pids_cgroup* parent_pids (struct pids_cgroup*) ;
 int pids_cancel (struct pids_cgroup*,int) ;

__attribute__((used)) static void pids_uncharge(struct pids_cgroup *pids, int num)
{
 struct pids_cgroup *p;

 for (p = pids; parent_pids(p); p = parent_pids(p))
  pids_cancel(p, num);
}
