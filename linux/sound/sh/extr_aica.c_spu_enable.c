
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARM_RESET_REGISTER ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int readl (int ) ;
 int spu_write_wait () ;
 int writel (int,int ) ;

__attribute__((used)) static void spu_enable(void)
{
 unsigned long flags;
 u32 regval = readl(ARM_RESET_REGISTER);
 regval &= ~1;
 spu_write_wait();
 local_irq_save(flags);
 writel(regval, ARM_RESET_REGISTER);
 local_irq_restore(flags);
}
