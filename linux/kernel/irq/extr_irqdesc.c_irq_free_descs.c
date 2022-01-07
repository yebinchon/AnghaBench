
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocated_irqs ;
 int bitmap_clear (int ,unsigned int,unsigned int) ;
 int free_desc (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int nr_irqs ;
 int sparse_irq_lock ;

void irq_free_descs(unsigned int from, unsigned int cnt)
{
 int i;

 if (from >= nr_irqs || (from + cnt) > nr_irqs)
  return;

 mutex_lock(&sparse_irq_lock);
 for (i = 0; i < cnt; i++)
  free_desc(from + i);

 bitmap_clear(allocated_irqs, from, cnt);
 mutex_unlock(&sparse_irq_lock);
}
