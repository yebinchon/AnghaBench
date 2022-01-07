
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct irqaction {unsigned int irq; unsigned int flags; scalar_t__ handler; unsigned long thread_mask; struct task_struct* thread; struct irqaction* secondary; int name; int * dir; struct irqaction* next; scalar_t__ thread_fn; } ;
struct TYPE_8__ {TYPE_1__* chip; } ;
struct irq_desc {int istate; int depth; int owner; int request_mutex; struct irqaction* action; int lock; scalar_t__ irqs_unhandled; scalar_t__ irq_count; TYPE_2__ irq_data; int wait_for_threads; } ;
struct TYPE_7__ {int flags; int name; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOSYS ;
 int IRQCHIP_ONESHOT_SAFE ;
 int IRQD_IRQ_INPROGRESS ;
 int IRQD_NO_BALANCING ;
 int IRQD_PER_CPU ;
 int IRQF_NOBALANCING ;
 int IRQF_ONESHOT ;
 int IRQF_PERCPU ;
 int IRQF_PROBE_SHARED ;
 int IRQF_SHARED ;
 unsigned int IRQF_TRIGGER_MASK ;
 int IRQS_AUTODETECT ;
 int IRQS_NMI ;
 int IRQS_ONESHOT ;
 int IRQS_SPURIOUS_DISABLED ;
 int IRQS_WAITING ;
 int IRQ_RESEND ;
 int IRQ_START_COND ;
 int WARN_ON_ONCE (int) ;
 int __enable_irq (struct irq_desc*) ;
 int __irq_set_trigger (struct irq_desc*,unsigned int) ;
 int chip_bus_lock (struct irq_desc*) ;
 int chip_bus_sync_unlock (struct irq_desc*) ;
 int dump_stack () ;
 unsigned long ffz (unsigned long) ;
 int init_waitqueue_head (int *) ;
 int irq_activate (struct irq_desc*) ;
 scalar_t__ irq_default_primary_handler ;
 scalar_t__ irq_nested_primary_handler ;
 int irq_pm_install_action (struct irq_desc*,struct irqaction*) ;
 int irq_release_resources (struct irq_desc*) ;
 int irq_request_resources (struct irq_desc*) ;
 scalar_t__ irq_settings_can_autoenable (struct irq_desc*) ;
 scalar_t__ irq_settings_can_thread (struct irq_desc*) ;
 int irq_settings_is_nested_thread (struct irq_desc*) ;
 int irq_settings_set_no_balancing (struct irq_desc*) ;
 int irq_settings_set_per_cpu (struct irq_desc*) ;
 int irq_setup_forced_threading (struct irqaction*) ;
 int irq_setup_timings (struct irq_desc*,struct irqaction*) ;
 int irq_startup (struct irq_desc*,int ,int ) ;
 int irqd_clear (TYPE_2__*,int ) ;
 unsigned int irqd_get_trigger_type (TYPE_2__*) ;
 int irqd_set (TYPE_2__*,int ) ;
 int irqd_set_trigger_type (TYPE_2__*,unsigned int) ;
 scalar_t__ irqd_trigger_type_was_set (TYPE_2__*) ;
 int kthread_stop (struct task_struct*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ no_irq_chip ;
 int pr_err (char*,unsigned int,...) ;
 int pr_warn (char*,unsigned int,unsigned int,unsigned int) ;
 int put_task_struct (struct task_struct*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int register_handler_proc (unsigned int,struct irqaction*) ;
 int register_irq_proc (unsigned int,struct irq_desc*) ;
 int setup_irq_thread (struct irqaction*,unsigned int,int) ;
 int try_module_get (int ) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int
__setup_irq(unsigned int irq, struct irq_desc *desc, struct irqaction *new)
{
 struct irqaction *old, **old_ptr;
 unsigned long flags, thread_mask = 0;
 int ret, nested, shared = 0;

 if (!desc)
  return -EINVAL;

 if (desc->irq_data.chip == &no_irq_chip)
  return -ENOSYS;
 if (!try_module_get(desc->owner))
  return -ENODEV;

 new->irq = irq;





 if (!(new->flags & IRQF_TRIGGER_MASK))
  new->flags |= irqd_get_trigger_type(&desc->irq_data);





 nested = irq_settings_is_nested_thread(desc);
 if (nested) {
  if (!new->thread_fn) {
   ret = -EINVAL;
   goto out_mput;
  }





  new->handler = irq_nested_primary_handler;
 } else {
  if (irq_settings_can_thread(desc)) {
   ret = irq_setup_forced_threading(new);
   if (ret)
    goto out_mput;
  }
 }






 if (new->thread_fn && !nested) {
  ret = setup_irq_thread(new, irq, 0);
  if (ret)
   goto out_mput;
  if (new->secondary) {
   ret = setup_irq_thread(new->secondary, irq, 1);
   if (ret)
    goto out_thread;
  }
 }
 if (desc->irq_data.chip->flags & IRQCHIP_ONESHOT_SAFE)
  new->flags &= ~IRQF_ONESHOT;
 mutex_lock(&desc->request_mutex);






 chip_bus_lock(desc);


 if (!desc->action) {
  ret = irq_request_resources(desc);
  if (ret) {
   pr_err("Failed to request resources for %s (irq %d) on irqchip %s\n",
          new->name, irq, desc->irq_data.chip->name);
   goto out_bus_unlock;
  }
 }







 raw_spin_lock_irqsave(&desc->lock, flags);
 old_ptr = &desc->action;
 old = *old_ptr;
 if (old) {
  unsigned int oldtype;

  if (desc->istate & IRQS_NMI) {
   pr_err("Invalid attempt to share NMI for %s (irq %d) on irqchip %s.\n",
    new->name, irq, desc->irq_data.chip->name);
   ret = -EINVAL;
   goto out_unlock;
  }





  if (irqd_trigger_type_was_set(&desc->irq_data)) {
   oldtype = irqd_get_trigger_type(&desc->irq_data);
  } else {
   oldtype = new->flags & IRQF_TRIGGER_MASK;
   irqd_set_trigger_type(&desc->irq_data, oldtype);
  }

  if (!((old->flags & new->flags) & IRQF_SHARED) ||
      (oldtype != (new->flags & IRQF_TRIGGER_MASK)) ||
      ((old->flags ^ new->flags) & IRQF_ONESHOT))
   goto mismatch;


  if ((old->flags & IRQF_PERCPU) !=
      (new->flags & IRQF_PERCPU))
   goto mismatch;


  do {





   thread_mask |= old->thread_mask;
   old_ptr = &old->next;
   old = *old_ptr;
  } while (old);
  shared = 1;
 }






 if (new->flags & IRQF_ONESHOT) {




  if (thread_mask == ~0UL) {
   ret = -EBUSY;
   goto out_unlock;
  }
  new->thread_mask = 1UL << ffz(thread_mask);

 } else if (new->handler == irq_default_primary_handler &&
     !(desc->irq_data.chip->flags & IRQCHIP_ONESHOT_SAFE)) {
  pr_err("Threaded irq requested with handler=NULL and !ONESHOT for irq %d\n",
         irq);
  ret = -EINVAL;
  goto out_unlock;
 }

 if (!shared) {
  init_waitqueue_head(&desc->wait_for_threads);


  if (new->flags & IRQF_TRIGGER_MASK) {
   ret = __irq_set_trigger(desc,
      new->flags & IRQF_TRIGGER_MASK);

   if (ret)
    goto out_unlock;
  }
  ret = irq_activate(desc);
  if (ret)
   goto out_unlock;

  desc->istate &= ~(IRQS_AUTODETECT | IRQS_SPURIOUS_DISABLED | IRQS_ONESHOT | IRQS_WAITING);

  irqd_clear(&desc->irq_data, IRQD_IRQ_INPROGRESS);

  if (new->flags & IRQF_PERCPU) {
   irqd_set(&desc->irq_data, IRQD_PER_CPU);
   irq_settings_set_per_cpu(desc);
  }

  if (new->flags & IRQF_ONESHOT)
   desc->istate |= IRQS_ONESHOT;


  if (new->flags & IRQF_NOBALANCING) {
   irq_settings_set_no_balancing(desc);
   irqd_set(&desc->irq_data, IRQD_NO_BALANCING);
  }

  if (irq_settings_can_autoenable(desc)) {
   irq_startup(desc, IRQ_RESEND, IRQ_START_COND);
  } else {






   WARN_ON_ONCE(new->flags & IRQF_SHARED);

   desc->depth = 1;
  }

 } else if (new->flags & IRQF_TRIGGER_MASK) {
  unsigned int nmsk = new->flags & IRQF_TRIGGER_MASK;
  unsigned int omsk = irqd_get_trigger_type(&desc->irq_data);

  if (nmsk != omsk)

   pr_warn("irq %d uses trigger mode %u; requested %u\n",
    irq, omsk, nmsk);
 }

 *old_ptr = new;

 irq_pm_install_action(desc, new);


 desc->irq_count = 0;
 desc->irqs_unhandled = 0;





 if (shared && (desc->istate & IRQS_SPURIOUS_DISABLED)) {
  desc->istate &= ~IRQS_SPURIOUS_DISABLED;
  __enable_irq(desc);
 }

 raw_spin_unlock_irqrestore(&desc->lock, flags);
 chip_bus_sync_unlock(desc);
 mutex_unlock(&desc->request_mutex);

 irq_setup_timings(desc, new);





 if (new->thread)
  wake_up_process(new->thread);
 if (new->secondary)
  wake_up_process(new->secondary->thread);

 register_irq_proc(irq, desc);
 new->dir = ((void*)0);
 register_handler_proc(irq, new);
 return 0;

mismatch:
 if (!(new->flags & IRQF_PROBE_SHARED)) {
  pr_err("Flags mismatch irq %d. %08x (%s) vs. %08x (%s)\n",
         irq, new->flags, new->name, old->flags, old->name);



 }
 ret = -EBUSY;

out_unlock:
 raw_spin_unlock_irqrestore(&desc->lock, flags);

 if (!desc->action)
  irq_release_resources(desc);
out_bus_unlock:
 chip_bus_sync_unlock(desc);
 mutex_unlock(&desc->request_mutex);

out_thread:
 if (new->thread) {
  struct task_struct *t = new->thread;

  new->thread = ((void*)0);
  kthread_stop(t);
  put_task_struct(t);
 }
 if (new->secondary && new->secondary->thread) {
  struct task_struct *t = new->secondary->thread;

  new->secondary->thread = ((void*)0);
  kthread_stop(t);
  put_task_struct(t);
 }
out_mput:
 module_put(desc->owner);
 return ret;
}
