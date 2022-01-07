
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPU_MEMORY_BASE ;
 int __raw_writel (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int spu_disable () ;
 int spu_enable () ;
 int spu_memset (int ,int ,int) ;

__attribute__((used)) static void spu_reset(void)
{
 unsigned long flags;
 spu_disable();
 spu_memset(0, 0, 0x200000 / 4);

 local_irq_save(flags);
 __raw_writel(0xea000002, SPU_MEMORY_BASE);
 local_irq_restore(flags);
 spu_enable();
}
