
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {unsigned long flags; char const* name; struct irqaction* secondary; void* dev_id; int (* thread_fn ) (unsigned int,void*) ;int (* handler ) (unsigned int,void*) ;} ;
struct irq_desc {int irq_data; } ;
typedef int (* irq_handler_t ) (unsigned int,void*) ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTCONN ;
 int GFP_KERNEL ;
 unsigned long IRQF_COND_SUSPEND ;
 unsigned long IRQF_NO_SUSPEND ;
 unsigned long IRQF_SHARED ;
 unsigned int IRQ_NOTCONNECTED ;
 scalar_t__ WARN_ON (int ) ;
 int __setup_irq (unsigned int,struct irq_desc*,struct irqaction*) ;
 int disable_irq (unsigned int) ;
 int enable_irq (unsigned int) ;
 int irq_chip_pm_get (int *) ;
 int irq_chip_pm_put (int *) ;
 int irq_default_primary_handler (unsigned int,void*) ;
 int irq_settings_can_request (struct irq_desc*) ;
 int irq_settings_is_per_cpu_devid (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int kfree (struct irqaction*) ;
 struct irqaction* kzalloc (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int request_threaded_irq(unsigned int irq, irq_handler_t handler,
    irq_handler_t thread_fn, unsigned long irqflags,
    const char *devname, void *dev_id)
{
 struct irqaction *action;
 struct irq_desc *desc;
 int retval;

 if (irq == IRQ_NOTCONNECTED)
  return -ENOTCONN;
 if (((irqflags & IRQF_SHARED) && !dev_id) ||
     (!(irqflags & IRQF_SHARED) && (irqflags & IRQF_COND_SUSPEND)) ||
     ((irqflags & IRQF_NO_SUSPEND) && (irqflags & IRQF_COND_SUSPEND)))
  return -EINVAL;

 desc = irq_to_desc(irq);
 if (!desc)
  return -EINVAL;

 if (!irq_settings_can_request(desc) ||
     WARN_ON(irq_settings_is_per_cpu_devid(desc)))
  return -EINVAL;

 if (!handler) {
  if (!thread_fn)
   return -EINVAL;
  handler = irq_default_primary_handler;
 }

 action = kzalloc(sizeof(struct irqaction), GFP_KERNEL);
 if (!action)
  return -ENOMEM;

 action->handler = handler;
 action->thread_fn = thread_fn;
 action->flags = irqflags;
 action->name = devname;
 action->dev_id = dev_id;

 retval = irq_chip_pm_get(&desc->irq_data);
 if (retval < 0) {
  kfree(action);
  return retval;
 }

 retval = __setup_irq(irq, desc, action);

 if (retval) {
  irq_chip_pm_put(&desc->irq_data);
  kfree(action->secondary);
  kfree(action);
 }
 return retval;
}
