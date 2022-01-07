
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct irqaction {void* dev_id; int flags; TYPE_1__* secondary; scalar_t__ thread; int (* handler ) (unsigned int,void*) ;struct irqaction* next; } ;
struct TYPE_5__ {unsigned int irq; } ;
struct irq_desc {int owner; TYPE_2__ irq_data; int request_mutex; int lock; struct irqaction* action; int * affinity_hint; } ;
struct TYPE_4__ {scalar_t__ thread; } ;


 int IRQF_SHARED ;
 int WARN (int,char*,unsigned int) ;
 scalar_t__ WARN_ON_ONCE (int *) ;
 int __synchronize_hardirq (struct irq_desc*,int) ;
 int chip_bus_lock (struct irq_desc*) ;
 int chip_bus_sync_unlock (struct irq_desc*) ;
 int in_interrupt () ;
 int irq_chip_pm_put (TYPE_2__*) ;
 int irq_domain_deactivate_irq (TYPE_2__*) ;
 int irq_pm_remove_action (struct irq_desc*,struct irqaction*) ;
 int irq_release_resources (struct irq_desc*) ;
 int irq_remove_timings (struct irq_desc*) ;
 int irq_settings_clr_disable_unlazy (struct irq_desc*) ;
 int irq_shutdown (struct irq_desc*) ;
 int kfree (TYPE_1__*) ;
 int kthread_stop (scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_task_struct (scalar_t__) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (unsigned int,void*) ;
 int unregister_handler_proc (unsigned int,struct irqaction*) ;

__attribute__((used)) static struct irqaction *__free_irq(struct irq_desc *desc, void *dev_id)
{
 unsigned irq = desc->irq_data.irq;
 struct irqaction *action, **action_ptr;
 unsigned long flags;

 WARN(in_interrupt(), "Trying to free IRQ %d from IRQ context!\n", irq);

 mutex_lock(&desc->request_mutex);
 chip_bus_lock(desc);
 raw_spin_lock_irqsave(&desc->lock, flags);





 action_ptr = &desc->action;
 for (;;) {
  action = *action_ptr;

  if (!action) {
   WARN(1, "Trying to free already-free IRQ %d\n", irq);
   raw_spin_unlock_irqrestore(&desc->lock, flags);
   chip_bus_sync_unlock(desc);
   mutex_unlock(&desc->request_mutex);
   return ((void*)0);
  }

  if (action->dev_id == dev_id)
   break;
  action_ptr = &action->next;
 }


 *action_ptr = action->next;

 irq_pm_remove_action(desc, action);


 if (!desc->action) {
  irq_settings_clr_disable_unlazy(desc);

  irq_shutdown(desc);
 }







 raw_spin_unlock_irqrestore(&desc->lock, flags);
 chip_bus_sync_unlock(desc);

 unregister_handler_proc(irq, action);






 __synchronize_hardirq(desc, 1);
 if (action->thread) {
  kthread_stop(action->thread);
  put_task_struct(action->thread);
  if (action->secondary && action->secondary->thread) {
   kthread_stop(action->secondary->thread);
   put_task_struct(action->secondary->thread);
  }
 }


 if (!desc->action) {




  chip_bus_lock(desc);




  raw_spin_lock_irqsave(&desc->lock, flags);
  irq_domain_deactivate_irq(&desc->irq_data);
  raw_spin_unlock_irqrestore(&desc->lock, flags);

  irq_release_resources(desc);
  chip_bus_sync_unlock(desc);
  irq_remove_timings(desc);
 }

 mutex_unlock(&desc->request_mutex);

 irq_chip_pm_put(&desc->irq_data);
 module_put(desc->owner);
 kfree(action->secondary);
 return action;
}
