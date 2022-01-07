
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipc_post {int node; } ;
struct intel_sst_drv {TYPE_1__* ops; int ipc_spin_lock; int ipc_dispatch_list; } ;
struct TYPE_2__ {int (* post_message ) (struct intel_sst_drv*,int *,int) ;} ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct intel_sst_drv*,int *,int) ;

void sst_add_to_dispatch_list_and_post(struct intel_sst_drv *sst,
      struct ipc_post *msg)
{
 unsigned long irq_flags;

 spin_lock_irqsave(&sst->ipc_spin_lock, irq_flags);
 list_add_tail(&msg->node, &sst->ipc_dispatch_list);
 spin_unlock_irqrestore(&sst->ipc_spin_lock, irq_flags);
 sst->ops->post_message(sst, ((void*)0), 0);
}
