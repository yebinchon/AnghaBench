
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5677_priv {int irq_lock; } ;
struct irq_data {int dummy; } ;


 struct rt5677_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void rt5677_irq_bus_lock(struct irq_data *data)
{
 struct rt5677_priv *rt5677 = irq_data_get_irq_chip_data(data);

 mutex_lock(&rt5677->irq_lock);
}
