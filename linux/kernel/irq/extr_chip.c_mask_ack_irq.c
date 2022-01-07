
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_4__ {int (* irq_ack ) (TYPE_2__*) ;int (* irq_mask_ack ) (TYPE_2__*) ;} ;


 int irq_state_set_masked (struct irq_desc*) ;
 int mask_irq (struct irq_desc*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static inline void mask_ack_irq(struct irq_desc *desc)
{
 if (desc->irq_data.chip->irq_mask_ack) {
  desc->irq_data.chip->irq_mask_ack(&desc->irq_data);
  irq_state_set_masked(desc);
 } else {
  mask_irq(desc);
  if (desc->irq_data.chip->irq_ack)
   desc->irq_data.chip->irq_ack(&desc->irq_data);
 }
}
