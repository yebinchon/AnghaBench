
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_devres {unsigned int member_0; void* member_1; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_irq_match ;
 int devm_irq_release ;
 int devres_destroy (struct device*,int ,int ,struct irq_devres*) ;
 int free_irq (unsigned int,void*) ;

void devm_free_irq(struct device *dev, unsigned int irq, void *dev_id)
{
 struct irq_devres match_data = { irq, dev_id };

 WARN_ON(devres_destroy(dev, devm_irq_release, devm_irq_match,
          &match_data));
 free_irq(irq, dev_id);
}
