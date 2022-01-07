
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_base_afe {int irqs_size; int irq_alloc_lock; TYPE_1__* irqs; } ;
struct TYPE_2__ {scalar_t__ irq_occupyed; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mtk_dynamic_irq_release(struct mtk_base_afe *afe, int irq_id)
{
 mutex_lock(&afe->irq_alloc_lock);
 if (irq_id >= 0 && irq_id < afe->irqs_size) {
  afe->irqs[irq_id].irq_occupyed = 0;
  mutex_unlock(&afe->irq_alloc_lock);
  return 0;
 }
 mutex_unlock(&afe->irq_alloc_lock);
 return -EINVAL;
}
