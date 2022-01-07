
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printk_safe_seq_buf {int work; } ;


 int irq_work_queue (int *) ;
 scalar_t__ printk_safe_irq_ready ;

__attribute__((used)) static void queue_flush_work(struct printk_safe_seq_buf *s)
{
 if (printk_safe_irq_ready)
  irq_work_queue(&s->work);
}
