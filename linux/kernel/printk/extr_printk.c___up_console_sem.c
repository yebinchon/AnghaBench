
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_lock_dep_map ;
 int console_sem ;
 int mutex_release (int *,int,unsigned long) ;
 int printk_safe_enter_irqsave (unsigned long) ;
 int printk_safe_exit_irqrestore (unsigned long) ;
 int up (int *) ;

__attribute__((used)) static void __up_console_sem(unsigned long ip)
{
 unsigned long flags;

 mutex_release(&console_lock_dep_map, 1, ip);

 printk_safe_enter_irqsave(flags);
 up(&console_sem);
 printk_safe_exit_irqrestore(flags);
}
