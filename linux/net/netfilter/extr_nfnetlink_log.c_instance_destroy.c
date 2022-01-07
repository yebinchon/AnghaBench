
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int dummy; } ;
struct nfnl_log_net {int instances_lock; } ;


 int __instance_destroy (struct nfulnl_instance*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void
instance_destroy(struct nfnl_log_net *log,
   struct nfulnl_instance *inst)
{
 spin_lock_bh(&log->instances_lock);
 __instance_destroy(inst);
 spin_unlock_bh(&log->instances_lock);
}
