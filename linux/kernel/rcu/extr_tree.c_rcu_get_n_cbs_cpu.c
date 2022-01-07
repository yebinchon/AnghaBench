
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int cblist; } ;


 struct rcu_data* per_cpu_ptr (int *,int) ;
 int rcu_data ;
 scalar_t__ rcu_segcblist_is_enabled (int *) ;
 long rcu_segcblist_n_cbs (int *) ;

__attribute__((used)) static long rcu_get_n_cbs_cpu(int cpu)
{
 struct rcu_data *rdp = per_cpu_ptr(&rcu_data, cpu);

 if (rcu_segcblist_is_enabled(&rdp->cblist))
  return rcu_segcblist_n_cbs(&rdp->cblist);
 return 0;
}
