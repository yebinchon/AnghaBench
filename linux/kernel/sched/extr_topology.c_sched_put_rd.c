
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_domain {int rcu; int refcount; } ;


 int atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int free_rootdomain ;

void sched_put_rd(struct root_domain *rd)
{
 if (!atomic_dec_and_test(&rd->refcount))
  return;

 call_rcu(&rd->rcu, free_rootdomain);
}
