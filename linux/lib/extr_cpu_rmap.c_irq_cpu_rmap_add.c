
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int notify; } ;
struct irq_glue {struct cpu_rmap* rmap; TYPE_1__ notify; int index; } ;
struct cpu_rmap {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_rmap_add (struct cpu_rmap*,struct irq_glue*) ;
 int cpu_rmap_get (struct cpu_rmap*) ;
 int cpu_rmap_put (struct cpu_rmap*) ;
 int irq_cpu_rmap_notify ;
 int irq_cpu_rmap_release ;
 int irq_set_affinity_notifier (int,TYPE_1__*) ;
 int kfree (struct irq_glue*) ;
 struct irq_glue* kzalloc (int,int ) ;

int irq_cpu_rmap_add(struct cpu_rmap *rmap, int irq)
{
 struct irq_glue *glue = kzalloc(sizeof(*glue), GFP_KERNEL);
 int rc;

 if (!glue)
  return -ENOMEM;
 glue->notify.notify = irq_cpu_rmap_notify;
 glue->notify.release = irq_cpu_rmap_release;
 glue->rmap = rmap;
 cpu_rmap_get(rmap);
 glue->index = cpu_rmap_add(rmap, glue);
 rc = irq_set_affinity_notifier(irq, &glue->notify);
 if (rc) {
  cpu_rmap_put(glue->rmap);
  kfree(glue);
 }
 return rc;
}
