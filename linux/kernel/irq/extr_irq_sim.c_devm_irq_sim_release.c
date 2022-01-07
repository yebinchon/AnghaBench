
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_sim_devres {int sim; } ;
struct device {int dummy; } ;


 int irq_sim_fini (int ) ;

__attribute__((used)) static void devm_irq_sim_release(struct device *dev, void *res)
{
 struct irq_sim_devres *this = res;

 irq_sim_fini(this->sim);
}
