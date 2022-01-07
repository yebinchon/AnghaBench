
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_torture {int rtort_rcu; } ;


 int rcu_torture_cb (int *) ;

__attribute__((used)) static void rcu_busted_torture_deferred_free(struct rcu_torture *p)
{

 rcu_torture_cb(&p->rtort_rcu);
}
