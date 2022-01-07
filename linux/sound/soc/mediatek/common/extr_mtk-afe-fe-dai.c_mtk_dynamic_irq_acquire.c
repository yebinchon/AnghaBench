
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_base_afe {int irqs_size; int irq_alloc_lock; TYPE_1__* irqs; } ;
struct TYPE_2__ {int irq_occupyed; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mtk_dynamic_irq_acquire(struct mtk_base_afe *afe)
{
 int i;

 mutex_lock(&afe->irq_alloc_lock);
 for (i = 0; i < afe->irqs_size; ++i) {
  if (afe->irqs[i].irq_occupyed == 0) {
   afe->irqs[i].irq_occupyed = 1;
   mutex_unlock(&afe->irq_alloc_lock);
   return i;
  }
 }
 mutex_unlock(&afe->irq_alloc_lock);
 return afe->irqs_size;
}
