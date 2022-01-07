
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfqnl_instance {int dummy; } ;
struct nfnl_queue_net {int instances_lock; } ;


 int __instance_destroy (struct nfqnl_instance*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
instance_destroy(struct nfnl_queue_net *q, struct nfqnl_instance *inst)
{
 spin_lock(&q->instances_lock);
 __instance_destroy(inst);
 spin_unlock(&q->instances_lock);
}
