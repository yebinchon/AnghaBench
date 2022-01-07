
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pids_cgroup {scalar_t__ limit; int counter; } ;
typedef scalar_t__ int64_t ;


 int EAGAIN ;
 scalar_t__ atomic64_add_return (int,int *) ;
 struct pids_cgroup* parent_pids (struct pids_cgroup*) ;
 int pids_cancel (struct pids_cgroup*,int) ;

__attribute__((used)) static int pids_try_charge(struct pids_cgroup *pids, int num)
{
 struct pids_cgroup *p, *q;

 for (p = pids; parent_pids(p); p = parent_pids(p)) {
  int64_t new = atomic64_add_return(num, &p->counter);






  if (new > p->limit)
   goto revert;
 }

 return 0;

revert:
 for (q = pids; q != p; q = parent_pids(q))
  pids_cancel(q, num);
 pids_cancel(p, num);

 return -EAGAIN;
}
