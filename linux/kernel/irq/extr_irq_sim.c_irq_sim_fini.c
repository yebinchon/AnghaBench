
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int work; } ;
struct irq_sim {int irqs; int irq_count; int irq_base; TYPE_1__ work_ctx; } ;


 int bitmap_free (int ) ;
 int irq_free_descs (int ,int ) ;
 int irq_work_sync (int *) ;
 int kfree (int ) ;

void irq_sim_fini(struct irq_sim *sim)
{
 irq_work_sync(&sim->work_ctx.work);
 bitmap_free(sim->work_ctx.pending);
 irq_free_descs(sim->irq_base, sim->irq_count);
 kfree(sim->irqs);
}
