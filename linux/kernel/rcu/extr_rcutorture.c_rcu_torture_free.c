
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_torture {int rtort_free; } ;


 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int n_rcu_torture_free ;
 int rcu_torture_freelist ;
 int rcu_torture_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
rcu_torture_free(struct rcu_torture *p)
{
 atomic_inc(&n_rcu_torture_free);
 spin_lock_bh(&rcu_torture_lock);
 list_add_tail(&p->rtort_free, &rcu_torture_freelist);
 spin_unlock_bh(&rcu_torture_lock);
}
