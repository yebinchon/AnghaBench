
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt5677_priv {int irq_en; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {int enable_mask; } ;


 struct rt5677_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 TYPE_1__* rt5677_irq_descs ;

__attribute__((used)) static void rt5677_irq_disable(struct irq_data *data)
{
 struct rt5677_priv *rt5677 = irq_data_get_irq_chip_data(data);

 rt5677->irq_en &= ~rt5677_irq_descs[data->hwirq].enable_mask;
}
