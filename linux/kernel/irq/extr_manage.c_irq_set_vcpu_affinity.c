
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {struct irq_data* parent_data; } ;
struct irq_chip {int (* irq_set_vcpu_affinity ) (struct irq_data*,void*) ;} ;


 int EINVAL ;
 int ENOSYS ;
 struct irq_chip* irq_data_get_irq_chip (struct irq_data*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 struct irq_desc* irq_get_desc_lock (unsigned int,unsigned long*,int ) ;
 int irq_put_desc_unlock (struct irq_desc*,unsigned long) ;
 int stub1 (struct irq_data*,void*) ;

int irq_set_vcpu_affinity(unsigned int irq, void *vcpu_info)
{
 unsigned long flags;
 struct irq_desc *desc = irq_get_desc_lock(irq, &flags, 0);
 struct irq_data *data;
 struct irq_chip *chip;
 int ret = -ENOSYS;

 if (!desc)
  return -EINVAL;

 data = irq_desc_get_irq_data(desc);
 do {
  chip = irq_data_get_irq_chip(data);
  if (chip && chip->irq_set_vcpu_affinity)
   break;



  data = ((void*)0);

 } while (data);

 if (data)
  ret = chip->irq_set_vcpu_affinity(data, vcpu_info);
 irq_put_desc_unlock(desc, flags);

 return ret;
}
