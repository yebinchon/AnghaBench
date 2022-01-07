
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {scalar_t__ (* thread_fn ) (int ,int ) ;int dev_id; int irq; } ;
struct irq_desc {int threads_handled; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 int atomic_inc (int *) ;
 int irq_finalize_oneshot (struct irq_desc*,struct irqaction*) ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static irqreturn_t irq_thread_fn(struct irq_desc *desc,
  struct irqaction *action)
{
 irqreturn_t ret;

 ret = action->thread_fn(action->irq, action->dev_id);
 if (ret == IRQ_HANDLED)
  atomic_inc(&desc->threads_handled);

 irq_finalize_oneshot(desc, action);
 return ret;
}
