
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int rcu; int use; } ;


 int call_rcu (int *,int ) ;
 int nfulnl_instance_free_rcu ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void
instance_put(struct nfulnl_instance *inst)
{
 if (inst && refcount_dec_and_test(&inst->use))
  call_rcu(&inst->rcu, nfulnl_instance_free_rcu);
}
