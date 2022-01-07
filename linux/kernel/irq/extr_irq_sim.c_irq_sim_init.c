
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int work; int pending; } ;
struct irq_sim {scalar_t__ irq_base; unsigned int irq_count; TYPE_1__ work_ctx; TYPE_2__* irqs; } ;
struct TYPE_6__ {int irqnum; int enabled; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_NOAUTOEN ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int bitmap_zalloc (unsigned int,int ) ;
 int handle_simple_irq ;
 int init_irq_work (int *,int ) ;
 scalar_t__ irq_alloc_descs (int,int ,unsigned int,int ) ;
 int irq_free_descs (int,unsigned int) ;
 int irq_modify_status (int,int,int ) ;
 int irq_set_chip (int,int *) ;
 int irq_set_chip_data (int,TYPE_2__*) ;
 int irq_set_handler (int,int *) ;
 int irq_sim_handle_irq ;
 int irq_sim_irqchip ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc_array (unsigned int,int,int ) ;

int irq_sim_init(struct irq_sim *sim, unsigned int num_irqs)
{
 int i;

 sim->irqs = kmalloc_array(num_irqs, sizeof(*sim->irqs), GFP_KERNEL);
 if (!sim->irqs)
  return -ENOMEM;

 sim->irq_base = irq_alloc_descs(-1, 0, num_irqs, 0);
 if (sim->irq_base < 0) {
  kfree(sim->irqs);
  return sim->irq_base;
 }

 sim->work_ctx.pending = bitmap_zalloc(num_irqs, GFP_KERNEL);
 if (!sim->work_ctx.pending) {
  kfree(sim->irqs);
  irq_free_descs(sim->irq_base, num_irqs);
  return -ENOMEM;
 }

 for (i = 0; i < num_irqs; i++) {
  sim->irqs[i].irqnum = sim->irq_base + i;
  sim->irqs[i].enabled = 0;
  irq_set_chip(sim->irq_base + i, &irq_sim_irqchip);
  irq_set_chip_data(sim->irq_base + i, &sim->irqs[i]);
  irq_set_handler(sim->irq_base + i, &handle_simple_irq);
  irq_modify_status(sim->irq_base + i,
      IRQ_NOREQUEST | IRQ_NOAUTOEN, IRQ_NOPROBE);
 }

 init_irq_work(&sim->work_ctx.work, irq_sim_handle_irq);
 sim->irq_count = num_irqs;

 return sim->irq_base;
}
