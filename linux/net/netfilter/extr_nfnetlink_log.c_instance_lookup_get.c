
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct nfulnl_instance {int use; } ;
struct nfnl_log_net {int dummy; } ;


 struct nfulnl_instance* __instance_lookup (struct nfnl_log_net*,int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct nfulnl_instance *
instance_lookup_get(struct nfnl_log_net *log, u_int16_t group_num)
{
 struct nfulnl_instance *inst;

 rcu_read_lock_bh();
 inst = __instance_lookup(log, group_num);
 if (inst && !refcount_inc_not_zero(&inst->use))
  inst = ((void*)0);
 rcu_read_unlock_bh();

 return inst;
}
