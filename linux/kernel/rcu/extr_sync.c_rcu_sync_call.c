
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_sync {int cb_head; } ;


 int call_rcu (int *,int ) ;
 int rcu_sync_func ;

__attribute__((used)) static void rcu_sync_call(struct rcu_sync *rsp)
{
 call_rcu(&rsp->cb_head, rcu_sync_func);
}
