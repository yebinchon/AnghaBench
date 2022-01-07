
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_desc {unsigned int irq; } ;
struct TYPE_2__ {struct msi_desc* msi_desc; } ;
struct irq_desc {TYPE_1__ irq_common_data; } ;


 int EINVAL ;
 int IRQ_GET_DESC_CHECK_GLOBAL ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;

int irq_set_msi_desc_off(unsigned int irq_base, unsigned int irq_offset,
    struct msi_desc *entry)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_lock(irq_base + irq_offset, &flags, IRQ_GET_DESC_CHECK_GLOBAL);

 if (!desc)
  return -EINVAL;
 desc->irq_common_data.msi_desc = entry;
 if (entry && !irq_offset)
  entry->irq = irq_base;
 irq_put_desc_unlock(desc, flags);
 return 0;
}
