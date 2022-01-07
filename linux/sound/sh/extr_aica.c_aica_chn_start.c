
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AICA_CMD_KICK ;
 int AICA_CMD_START ;
 scalar_t__ AICA_CONTROL_POINT ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int spu_write_wait () ;
 int writel (int,int *) ;

__attribute__((used)) static void aica_chn_start(void)
{
 unsigned long flags;
 spu_write_wait();
 local_irq_save(flags);
 writel(AICA_CMD_KICK | AICA_CMD_START, (u32 *) AICA_CONTROL_POINT);
 local_irq_restore(flags);
}
