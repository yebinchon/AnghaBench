
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pids_cgroup {int counter; } ;


 int WARN_ON_ONCE (int ) ;
 int atomic64_add_negative (int,int *) ;

__attribute__((used)) static void pids_cancel(struct pids_cgroup *pids, int num)
{




 WARN_ON_ONCE(atomic64_add_negative(-num, &pids->counter));
}
