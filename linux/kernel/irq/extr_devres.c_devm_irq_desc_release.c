
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc_devres {int cnt; int from; } ;
struct device {int dummy; } ;


 int irq_free_descs (int ,int ) ;

__attribute__((used)) static void devm_irq_desc_release(struct device *dev, void *res)
{
 struct irq_desc_devres *this = res;

 irq_free_descs(this->from, this->cnt);
}
