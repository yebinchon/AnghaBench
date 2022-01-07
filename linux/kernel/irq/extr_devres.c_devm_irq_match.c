
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_devres {scalar_t__ irq; scalar_t__ dev_id; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_irq_match(struct device *dev, void *res, void *data)
{
 struct irq_devres *this = res, *match = data;

 return this->irq == match->irq && this->dev_id == match->dev_id;
}
