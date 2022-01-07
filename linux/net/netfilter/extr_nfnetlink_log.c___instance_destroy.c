
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfulnl_instance {int lock; scalar_t__ skb; int copy_mode; int hlist; } ;


 int NFULNL_COPY_DISABLED ;
 int __nfulnl_flush (struct nfulnl_instance*) ;
 int hlist_del_rcu (int *) ;
 int instance_put (struct nfulnl_instance*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
__instance_destroy(struct nfulnl_instance *inst)
{

 hlist_del_rcu(&inst->hlist);



 spin_lock(&inst->lock);


 inst->copy_mode = NFULNL_COPY_DISABLED;

 if (inst->skb)
  __nfulnl_flush(inst);
 spin_unlock(&inst->lock);


 instance_put(inst);
}
