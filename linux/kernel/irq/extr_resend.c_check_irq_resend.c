
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {int istate; unsigned int parent_irq; TYPE_2__ irq_data; } ;
struct TYPE_3__ {int (* irq_retrigger ) (TYPE_2__*) ;} ;


 int IRQS_PENDING ;
 int IRQS_REPLAY ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 scalar_t__ irq_settings_is_level (struct irq_desc*) ;
 scalar_t__ irq_settings_is_nested_thread (struct irq_desc*) ;
 int irqs_resend ;
 int resend_tasklet ;
 int set_bit (unsigned int,int ) ;
 int stub1 (TYPE_2__*) ;
 int tasklet_schedule (int *) ;

void check_irq_resend(struct irq_desc *desc)
{






 if (irq_settings_is_level(desc)) {
  desc->istate &= ~IRQS_PENDING;
  return;
 }
 if (desc->istate & IRQS_REPLAY)
  return;
 if (desc->istate & IRQS_PENDING) {
  desc->istate &= ~IRQS_PENDING;
  desc->istate |= IRQS_REPLAY;

  if (!desc->irq_data.chip->irq_retrigger ||
      !desc->irq_data.chip->irq_retrigger(&desc->irq_data)) {
  }
 }
}
