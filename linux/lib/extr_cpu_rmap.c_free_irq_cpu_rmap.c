
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int irq; } ;
struct irq_glue {TYPE_1__ notify; } ;
struct cpu_rmap {size_t used; struct irq_glue** obj; } ;


 int cpu_rmap_put (struct cpu_rmap*) ;
 int irq_set_affinity_notifier (int ,int *) ;

void free_irq_cpu_rmap(struct cpu_rmap *rmap)
{
 struct irq_glue *glue;
 u16 index;

 if (!rmap)
  return;

 for (index = 0; index < rmap->used; index++) {
  glue = rmap->obj[index];
  irq_set_affinity_notifier(glue->notify.irq, ((void*)0));
 }

 cpu_rmap_put(rmap);
}
