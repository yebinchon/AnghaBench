
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocated_irqs ;
 int bitmap_set (int ,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sparse_irq_lock ;

void irq_mark_irq(unsigned int irq)
{
 mutex_lock(&sparse_irq_lock);
 bitmap_set(allocated_irqs, irq, 1);
 mutex_unlock(&sparse_irq_lock);
}
