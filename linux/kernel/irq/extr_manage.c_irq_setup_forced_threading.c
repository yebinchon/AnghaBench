
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqaction {int flags; scalar_t__ handler; scalar_t__ thread_fn; int thread_flags; int name; TYPE_1__* secondary; int irq; int dev_id; } ;
struct TYPE_2__ {scalar_t__ thread_fn; int name; int irq; int dev_id; int handler; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_NO_THREAD ;
 int IRQF_ONESHOT ;
 int IRQF_PERCPU ;
 int IRQTF_FORCED_THREAD ;
 int force_irqthreads ;
 scalar_t__ irq_default_primary_handler ;
 int irq_forced_secondary_handler ;
 TYPE_1__* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int irq_setup_forced_threading(struct irqaction *new)
{
 if (!force_irqthreads)
  return 0;
 if (new->flags & (IRQF_NO_THREAD | IRQF_PERCPU | IRQF_ONESHOT))
  return 0;





 if (new->handler == irq_default_primary_handler)
  return 0;

 new->flags |= IRQF_ONESHOT;






 if (new->handler && new->thread_fn) {

  new->secondary = kzalloc(sizeof(struct irqaction), GFP_KERNEL);
  if (!new->secondary)
   return -ENOMEM;
  new->secondary->handler = irq_forced_secondary_handler;
  new->secondary->thread_fn = new->thread_fn;
  new->secondary->dev_id = new->dev_id;
  new->secondary->irq = new->irq;
  new->secondary->name = new->name;
 }

 set_bit(IRQTF_FORCED_THREAD, &new->thread_flags);
 new->thread_fn = new->handler;
 new->handler = irq_default_primary_handler;
 return 0;
}
