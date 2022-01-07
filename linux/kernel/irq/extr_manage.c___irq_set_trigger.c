
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct irq_chip* chip; } ;
struct irq_desc {TYPE_1__ irq_data; } ;
struct irq_chip {int (* irq_set_type ) (TYPE_1__*,unsigned long) ;int flags; scalar_t__ name; } ;


 int IRQCHIP_SET_TYPE_MASKED ;
 unsigned long IRQD_LEVEL ;
 unsigned long IRQD_TRIGGER_MASK ;



 unsigned long IRQ_TYPE_LEVEL_MASK ;
 unsigned long IRQ_TYPE_SENSE_MASK ;
 int irq_desc_get_irq (struct irq_desc*) ;
 int irq_settings_clr_level (struct irq_desc*) ;
 int irq_settings_set_level (struct irq_desc*) ;
 int irq_settings_set_trigger_mask (struct irq_desc*,unsigned long) ;
 int irqd_clear (TYPE_1__*,unsigned long) ;
 unsigned long irqd_get_trigger_type (TYPE_1__*) ;
 int irqd_irq_disabled (TYPE_1__*) ;
 int irqd_irq_masked (TYPE_1__*) ;
 int irqd_set (TYPE_1__*,unsigned long) ;
 int mask_irq (struct irq_desc*) ;
 int pr_debug (char*,int ,char*) ;
 int pr_err (char*,unsigned long,int ,int (*) (TYPE_1__*,unsigned long)) ;
 int stub1 (TYPE_1__*,unsigned long) ;
 int unmask_irq (struct irq_desc*) ;

int __irq_set_trigger(struct irq_desc *desc, unsigned long flags)
{
 struct irq_chip *chip = desc->irq_data.chip;
 int ret, unmask = 0;

 if (!chip || !chip->irq_set_type) {




  pr_debug("No set_type function for IRQ %d (%s)\n",
    irq_desc_get_irq(desc),
    chip ? (chip->name ? : "unknown") : "unknown");
  return 0;
 }

 if (chip->flags & IRQCHIP_SET_TYPE_MASKED) {
  if (!irqd_irq_masked(&desc->irq_data))
   mask_irq(desc);
  if (!irqd_irq_disabled(&desc->irq_data))
   unmask = 1;
 }


 flags &= IRQ_TYPE_SENSE_MASK;
 ret = chip->irq_set_type(&desc->irq_data, flags);

 switch (ret) {
 case 130:
 case 129:
  irqd_clear(&desc->irq_data, IRQD_TRIGGER_MASK);
  irqd_set(&desc->irq_data, flags);


 case 128:
  flags = irqd_get_trigger_type(&desc->irq_data);
  irq_settings_set_trigger_mask(desc, flags);
  irqd_clear(&desc->irq_data, IRQD_LEVEL);
  irq_settings_clr_level(desc);
  if (flags & IRQ_TYPE_LEVEL_MASK) {
   irq_settings_set_level(desc);
   irqd_set(&desc->irq_data, IRQD_LEVEL);
  }

  ret = 0;
  break;
 default:
  pr_err("Setting trigger mode %lu for irq %u failed (%pS)\n",
         flags, irq_desc_get_irq(desc), chip->irq_set_type);
 }
 if (unmask)
  unmask_irq(desc);
 return ret;
}
