
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_sim_irq_ctx {int enabled; } ;
struct irq_data {int dummy; } ;


 struct irq_sim_irq_ctx* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void irq_sim_irqmask(struct irq_data *data)
{
 struct irq_sim_irq_ctx *irq_ctx = irq_data_get_irq_chip_data(data);

 irq_ctx->enabled = 0;
}
