
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int dummy; } ;


 int __wb_writeout_inc (struct bdi_writeback*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void wb_writeout_inc(struct bdi_writeback *wb)
{
 unsigned long flags;

 local_irq_save(flags);
 __wb_writeout_inc(wb);
 local_irq_restore(flags);
}
