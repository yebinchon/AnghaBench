
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ SPU_MEMORY_BASE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spu_write_wait () ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void spu_memset(u32 toi, u32 what, int length)
{
 int i;
 unsigned long flags;
 if (snd_BUG_ON(length % 4))
  return;
 for (i = 0; i < length; i++) {
  if (!(i % 8))
   spu_write_wait();
  local_irq_save(flags);
  writel(what, toi + SPU_MEMORY_BASE);
  local_irq_restore(flags);
  toi++;
 }
}
