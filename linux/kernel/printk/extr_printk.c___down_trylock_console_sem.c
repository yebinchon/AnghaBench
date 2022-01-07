
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_lock_dep_map ;
 int console_sem ;
 int down_trylock (int *) ;
 int mutex_acquire (int *,int ,int,unsigned long) ;
 int printk_safe_enter_irqsave (unsigned long) ;
 int printk_safe_exit_irqrestore (unsigned long) ;

__attribute__((used)) static int __down_trylock_console_sem(unsigned long ip)
{
 int lock_failed;
 unsigned long flags;






 printk_safe_enter_irqsave(flags);
 lock_failed = down_trylock(&console_sem);
 printk_safe_exit_irqrestore(flags);

 if (lock_failed)
  return 1;
 mutex_acquire(&console_lock_dep_map, 0, 1, ip);
 return 0;
}
